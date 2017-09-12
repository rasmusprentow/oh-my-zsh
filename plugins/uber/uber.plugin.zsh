
alias ad='arc diff'
alias ult='cn && make lint && gulp test'
alias adl='arc diff --reviewers lasse,olerass,#si_ui_team'
alias adh='arc diff HEAD^1 --reviewers lasse,olerass,#si_ui_team'
alias grim='git rebase -i master'
alias grhs='git reset HEAD^1 --soft'
alias gaca='git add -A && git commit --amend'

gcaa() {
  git add -A && git commit -m "$*"
}

alkb() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  arc land $* --keep-branch && gcm && gl && gco $FEATURE_BRANCH && grbm
}

gpim() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  gcm && gl && gco $FEATURE_BRANCH && grbm
}