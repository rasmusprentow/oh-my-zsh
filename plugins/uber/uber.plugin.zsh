
alias ad='arc diff'
alias adl='arc diff --reviewers lasse,olerass,#si_ui_team'
alias adh='arc diff HEAD^1 --reviewers lasse,olerass,#si_ui_team'
alias grm='git rebase master'
alias grim='git rebase -i master'
alias grhs='git reset HEAD^1 --soft'
alias gaca='git add -A && git commit --amend'

gcaa() {
  git add -A && git commit -m "$*"
}

alkb() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  arc land $* --keep-branch && gcm && gl && gco $FEATURE_BRANCH && grm
}

