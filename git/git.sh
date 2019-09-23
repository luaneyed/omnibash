source $OMNIBASH_PATH/git/.git-completion.sh

alias ga='git add -A'
__git_complete ga _git_add

alias gap='git add -p'
__git_complete gap _git_add

alias gb='git branch'
__git_complete gb _git_branch

alias gba='git branch -a'
__git_complete gb _git_branch

alias gbr="git for-each-ref --sort=committerdate refs/heads/ --format="\
"'%(HEAD) %(color: dim white)%(objectname:short)%(color:reset) | %(color:yellow)%(refname:short)%(color:reset) "\
"%(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias gbh="git for-each-ref --sort=committerdate refs/heads/ --format="\
"'%(HEAD) %(color: dim white)%(objectname:short)%(color:reset) | %(color:yellow)%(refname:short)%(color:reset) "\
"(%(color:green)%(committerdate:relative)%(color:reset))'"

alias gbm="git for-each-ref --sort=committerdate refs/heads/ --format="\
"'%(HEAD) %(color:yellow)%(refname:short)%(color:reset) %(contents:subject) "\
"(%(color:green)%(committerdate:relative)%(color:reset))'"

alias gbv='git branch -vv'
__git_complete gbv _git_branch

alias gc='git commit'
__git_complete gc _git_commit

alias gcl='. '$OMNIBASH_PATH'/git/gcl.sh'

alias gcm='git commit -m'
__git_complete gc _git_commit

alias gcn='git clean'
__git_complete gcn _git_clean

alias gck='git checkout'
__git_complete gck _git_checkout

alias gck-='git checkout -'
__git_complete gck- _git_checkout

alias gcp='git cherry-pick'
__git_complete gcp _git_cherry_pick

alias gckm='git checkout master'
__git_complete gckm _git_checkout

alias gckv='git checkout development'
__git_complete gckv _git_checkout

alias gd='git diff'
__git_complete gd _git_diff

alias gdh='git diff HEAD'
__git_complete gdh _git_diff

alias gdm='git diff master'
__git_complete gdm _git_diff

alias gdmn='git diff master --name-only'
__git_complete gdmn _git_diff

alias gdv='git diff development'
__git_complete gdv _git_diff

alias gdvn='git diff development --name-only'
__git_complete gdvn _git_diff

alias gds='git diff --staged'
__git_complete gds _git_diff

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

alias gl7='git log -7'
__git_complete gl7 _git_log

alias gm='git merge'
__git_complete gm _git_merge

alias gmm='git merge master'
__git_complete gmm _git_merge

alias gmv='git merge development'
__git_complete gmv _git_merge

alias gmt='git mergetool'
__git_complete gmt _git_mergetool

alias gp='git pull'
__git_complete gp _git_pull

alias gpoh='git push origin HEAD'
__git_complete gpoh _git_push

alias gpu='git push upstream'

alias gr='git rebase'
__git_complete gr _git_rebase

alias gri='git rebase --interactive'
__git_complete gri _git_rebase

alias grm='git rebase master'
__git_complete gri _git_rebase

alias grv='git rebase development'
__git_complete grv _git_rebase

alias gs='git status'
__git_complete gs _git_status

alias gsh='git show'
__git_complete gsh _git_show

alias gsm='git submodule'
__git_complete gsm _git_submodule

alias gst='git stash'
__git_complete gst _git_stash

alias gsth='git stash show -p'

alias gstl='git stash list'

_git_submodule_update ()
{
    __gitcomp "$__git_submodule_update_options"
}
alias gsmu='git submodule update'
__git_complete gsmu _git_submodule_update

alias gsmur='git submodule update --recursive'
__git_complete gsmur _git_submodule_update
