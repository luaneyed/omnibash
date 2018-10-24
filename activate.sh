alias b='bat'
alias c='clear'
alias cb='cargo build'
alias cc='cargo check'
alias cr='cargo run'
alias ct='cargo test'
alias cdp='cd ..'
alias cd-='cd $OLDPWD'
alias dc='docker-compose'
alias dcb='dc build'
alias dcbn='dcb --no-cache'
alias dcu='dc up'
alias dcub='dcu --build'
alias dcuf='dcu --force-recreate'
alias dcd='dc down'
alias di='docker images'
alias dl='docker logs'
alias dp='docker ps'
alias dpa='docker ps -a'
alias e='exa --group-directories-first'
alias ef='e -alghHmuUiS --git'
alias eg='e -alh --git --git-ignore'
alias el='e -l'
alias fz='$(fzf)'
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
