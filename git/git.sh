source $OMNIBASH_PATH/git/.git-completion.sh

alias ga='git add -A'
__git_complete ga _git_add

alias gb='git branch'
__git_complete gb _git_branch

alias gbv='git branch -vv'
__git_complete gbv _git_branch

alias gc='git commit'
__git_complete gc _git_commit

alias gcm='git commit -m'
__git_complete gc _git_commit

alias gck='git checkout'
__git_complete gck _git_checkout

alias gckm='git checkout master'
__git_complete gckm _git_checkout

alias gd='git diff'
__git_complete gd _git_diff

alias gdh='git diff HEAD'
__git_complete gdh _git_diff

alias gf='git fetch'
__git_complete gf _git_fetch

alias gl='git log'
__git_complete gl _git_log

alias gl1='git log -1'
__git_complete gl1 _git_log

alias gl2='git log -2'
__git_complete gl2 _git_log

alias gl3='git log -3'
__git_complete gl3 _git_log

alias gl4='git log -4'
__git_complete gl4 _git_log

alias gl5='git log -5'
__git_complete gl5 _git_log

alias gl6='git log -6'
__git_complete gl6 _git_log

alias gm='git merge'
__git_complete gm _git_merge

alias gmm='git merge master'
__git_complete gmm _git_merge

alias gmt='git mergetool'
__git_complete gmt _git_mergetool

alias gp='git pull'
__git_complete gp _git_pull

alias gpoh='git push origin HEAD'
__git_complete gpoh _git_push

alias gr='git rebase'
__git_complete gr _git_rebase

alias gri='git rebase --interactive'
__git_complete gri _git_rebase

alias gs='git status'
__git_complete gs _git_status

alias gu='git submodule update'
__git_complete gu _git_submodule
