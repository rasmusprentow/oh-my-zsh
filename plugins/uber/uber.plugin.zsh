
alias ad='arc diff'
alias ult='cn && make lint && gulp test'
alias adl='arc diff --reviewers ,#si_ui_team'
alias adh='arc diff HEAD^1 --reviewers ,#si_ui_team'
alias grim='git rebase -i master'
alias grhs='git reset HEAD^1 --soft'
alias gaca='git add -A && git commit --amend'
alias gacan='git add -A && git commit --amend --no-edit'

gcaa() {
  git add -A && git commit -m "$*"
}

alkb() {
    COMMIT=$(git log --format=format:%H master... | tail -n1)
    FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
    arc land $COMMIT --keep-branch --onto master && gcm && gl && gco $FEATURE_BRANCH && grbm
}

gpodb() {
  git push origin --delete $(git rev-parse --abbrev-ref HEAD)
}

gpim() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  gcm && gl && gco $FEATURE_BRANCH && grbm
}

adc() {
  if [ -z $* ]; then echo "No ref specified, dumbass!!"; exit 1; fi
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  git push -fu origin $FEATURE_BRANCH && gco $* && adh && gco $FEATURE_BRANCH
}

adra() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  if [ "$FEATURE_BRANCH" -eq "master" ]; then echo "Don't use this command on master!"; exit 1; fi
  git push -fu origin $FEATURE_BRANCH
  COMMITS=$(git log --format=format:%H master...)
  while read -r ref
  do
    git checkout $ref
    arc diff HEAD^1 -m 'rebase' --nolint --excuse 'Automated run on stacked diff, linting is too slow'
  done<<<$COMMITS
  git checkout $FEATURE_BRANCH
}

alias uui='cd ~/projects/udeploy-ui; cn'
alias uua='cd ~/projects/udeploy-aggregator; cn'
alias uod='cd ~/projects/odin-frontend; cn'
alias upe='cd ~/projects/web-peloton; cn'
alias udc='cd ~/projects/developer-console; cn'

alias gdelpush='gpodb && gpsup'
alias ucmds='vim ~/.oh-my-zsh/plugins/uber/uber.plugin.zsh'
alias afix='gacan && adh -m "fix"'
alias aaddr='gacan && adh -m "addressed comments"'
alias areb='adh -m "rebase"'

alias nureg='npm config set registry https://unpm.uberinternal.com/'
alias ndreg='npm config set registry https://registry.npmjs.org/'

stopprojects() {
  killall make
  killall npm 
  killall node
  killall cerberus
  killall gulp


}
bootui() {
  #set -eux 
  stopprojects
  uui
  cn
  ussh
  make serve > /dev/null 2>&1 &
  gulp dev > /dev/null 2>&1 &
  make dartium-open
  make nginx-setup
  make nginx-start
  while true; do 
    make aggregator-prod-tunnel
  done

}

export DARTIUM_EXPIRATION_TIME=1577836800
export PATH="$PATH":"~/.pub-cache/bin"
