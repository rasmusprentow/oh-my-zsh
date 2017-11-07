
alias ad='arc diff'
alias ult='cn && make lint && gulp test'
alias adl='arc diff --reviewers lasse,olerass,#si_ui_team'
alias adh='arc diff HEAD^1 --reviewers lasse,olerass,#si_ui_team'
alias grim='git rebase -i master'
alias grhs='git reset HEAD^1 --soft'
alias gaca='git add -A && git commit --amend'
alias gacan='git add -A && git commit --amend --no-edit'
gcaa() {
  git add -A && git commit -m "$*"
}

alkb() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  arc land $* --keep-branch && gcm && gl && gco $FEATURE_BRANCH && grbm
}

gpodb() {
  git push origin --delete $(git rev-parse --abbrev-ref HEAD)
}

gpim() {
  FEATURE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  gcm && gl && gco $FEATURE_BRANCH && grbm
}

alias uui='cd ~/projects/udeploy-ui'
alias uua='cd ~/projects/udeploy-aggregator'

alias gdelpush='gpodb && gpsup'
  
alias ucmds='vim ~/.oh-my-zsh/plugins/uber/uber.plugin.zsh'
#export DARTIUM_EXPIRATION_TIME=1577836800
