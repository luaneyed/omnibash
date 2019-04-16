alias cb='cargo build'
alias cc='cargo check'
alias cr='cargo run'
alias ct='cargo test'
alias cdp='cd ..'
alias cdpp='cd ../..'
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
alias ea='e -a'
alias eal='e -al'
alias el='e -l'
alias fz='$(fzf)'
alias gt='GIT_TRACE=1'
alias ni='npm install'
alias nr='npm run'
alias nt='npm test'
alias pe='pipenv'
alias pei='pe install'
alias peid='pei --dev'
alias per='pe run'
alias pes='pe shell'
alias peui='pe uninstall'
alias py='python3'
alias py2='python'
alias ya='yarn add'
alias yc='yarn check'
alias yi='yarn install'
alias yr='yarn run'
alias yt='yarn test'

add_script_to_alias()
{
    alias $1='. '$OMNIBASH_PATH'/scripts/'$1'.sh'
}

add_script_to_alias b
add_script_to_alias cdpl
add_script_to_alias cde
add_script_to_alias dec
add_script_to_alias e
add_script_to_alias ef
add_script_to_alias eg
add_script_to_alias enc
add_script_to_alias pjs
add_script_to_alias ytb
add_script_to_alias weather

unset add_script_to_alias

export GPG_TTY=$(tty)

source $OMNIBASH_PATH'/views/ps1.sh'
source $OMNIBASH_PATH'/views/color.sh'
source $OMNIBASH_PATH'/git/git.sh'

