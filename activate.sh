alias c='clear'
alias cdp='cd ..'
alias cd-='cd $OLDPWD'
alias dc='docker-compose'
alias dcb='dc build'
alias dcbn='dcb --no-cache'
alias dcu='dc up'
alias dcub='dcu --build'
alias dcd='dc down'
alias di='docker images'
alias dl='docker logs'
alias dp='docker ps'
alias dpa='docker ps -a'
alias fz='$(fzf)'
alias l='less'
alias py='python3'
alias py2='python'
alias ya='yarn add'
alias yr='yarn run'

add_script_to_alias()
{
    alias $1='. '$OMNIBASH_PATH'/scripts/'$1'.sh'
}

add_script_to_alias cl
add_script_to_alias cdpl
add_script_to_alias cde
add_script_to_alias dec
add_script_to_alias enc
add_script_to_alias pjs
add_script_to_alias ytb
add_script_to_alias weather

unset add_script_to_alias

source $OMNIBASH_PATH'/views/ps1.sh'
source $OMNIBASH_PATH'/views/color.sh'
source $OMNIBASH_PATH'/git/git.sh'
