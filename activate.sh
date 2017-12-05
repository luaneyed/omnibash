alias c='clear'
alias cdp='cd ..'

add_script_to_alias()
{
    alias $1='. '$OMNIBASH_PATH'/scripts/'$1'.sh'
}

add_script_to_alias cl
add_script_to_alias cdpl
add_script_to_alias cde
add_script_to_alias pjs
add_script_to_alias ytb
add_script_to_alias weather

unset add_script_to_alias

source $OMNIBASH_PATH'/views/ps1.sh'
source $OMNIBASH_PATH'/git/git.sh'
