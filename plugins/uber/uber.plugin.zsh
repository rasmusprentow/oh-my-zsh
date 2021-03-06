
alias adh='arc diff HEAD^1'
alias grim='git rebase -i master'
alias grhs='git reset HEAD^1 --soft'
alias gaca='git add -A && git commit --amend'
alias gacan='git add -A && git commit --amend --no-edit'
alias gctmp='git commit -A -m "temp"'

# arc land keep branch. Lands the first commit in a stack
alkb() {
    COMMIT=$(git log --format=format:%H master... | tail -n1)
    FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
    arc land $COMMIT --keep-branch --onto master && git checkout master && git pull && git checkout $FEATURE_BRANCH && git rebase master
}

# Git "pull in master" aka. rebase on master
gpim() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  git checkout master  && git pull && git checkout $FEATURE_BRANCH && git rebase master
}

# Arc diff rebase all. Update diffs in stack with rebase comment.
adra() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  if [ "$FEATURE_BRANCH" =  "master" ]; then echo "Don't use this command on master!"; exit 1; fi
  git push -fu origin $FEATURE_BRANCH
  COMMITS=$(git log --format=format:%H master...)
  while read -r ref
  do
    ISTEMP=$(git log --pretty=oneline --abbrev-commit $ref | head -n 1 | grep 'temp$')
    if [[ ! -z "$ISTEMP" ]]; then continue; fi
    git checkout $ref
    arc diff HEAD^1 -m 'rebase' --nolint --excuse 'Automated run on stacked diff, linting is too slow'
  done<<<$COMMITS
  git checkout $FEATURE_BRANCH
}

# gcad = git commit arc diff
# Commits all files and make a diff which includes a "Depends on" ref to the previous diff in the stack.
# Usage: gcad <commit message>
gcad() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  git add -A && \
  git commit -m "$*" && \
  git push -fu origin $FEATURE_BRANCH && \

  PREV_STACK_DIFF=$(git log HEAD^^1..HEAD^1 | grep "Differential Revision" | cut -d"/" -f 4)
  MESSAGE_FILE=$(mktemp)
  echo -e $* "\n\nSummary:\nDepends on" $PREV_STACK_DIFF > $MESSAGE_FILE

  arc diff HEAD^1 --reviewers ,#si_ui_team --message-file $MESSAGE_FILE
  rm $MESSAGE_FILE
}

alias udc='cd ~/projects/developer-console; nvm use'

alias ucmds='vim ~/.oh-my-zsh/plugins/uber/uber.plugin.zsh'
alias afix='gacan && adh -m "fix"'
alias aaddr='gacan && adh -m "addressed comments"'
alias areb='adh -m "rebase"'

export DARTIUM_EXPIRATION_TIME=1577836800
export PATH="$PATH":"~/.pub-cache/bin"
