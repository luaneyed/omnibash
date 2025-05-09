alias al='AWS_REGION=localhost'
alias cb='cargo build'
alias cc='cargo check'
alias cf='cargo fmt'
alias clp='cargo clippy --tests'
alias cr='cargo run'
alias ct='cargo test'
alias cdp='cd ..'
alias cdpp='cd ../..'
alias cd-='cd $OLDPWD'
alias d='date -u'
alias dc='docker compose'
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
alias dt='deno test'
alias ea='e -a'
alias eal='e -al'
alias el='e -l'
alias fz='$(fzf)'
alias gt='GIT_TRACE=1'
alias kc='kubectl'
alias kcx='kc ctx'
alias mk='minikube'
alias mks='mk service'
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
alias tw='terraform workspace'
alias twl='tw list'
alias tws='tw select'
alias t='tmux'
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
add_script_to_alias cde
add_script_to_alias db
add_script_to_alias dec
add_script_to_alias e
add_script_to_alias ef
add_script_to_alias eg
add_script_to_alias enc
add_script_to_alias kl
add_script_to_alias pjs
add_script_to_alias ts
add_script_to_alias weather
add_script_to_alias ytb

unset add_script_to_alias

export GPG_TTY=$(tty)

source $OMNIBASH_PATH'/views/color.sh'
source $OMNIBASH_PATH'/views/history.sh'
source $OMNIBASH_PATH'/views/ps1.sh'
source $OMNIBASH_PATH'/git/git.sh'

