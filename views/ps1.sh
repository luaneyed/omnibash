#!/bin/bash

__is_status_clean ()
{
    echo "echo ""\`git status\`"" | grep \"nothing to commit\" > /dev/null 2>&1;"
}

__set_user_color ()
{
    echo "\[\033[38;5;45m\]"
}

__set_path_color ()
{
    echo "\[\033[38;5;87m\]"
}

__set_dirty_branch_color ()
{
    echo "\[\033[38;5;228m\]"
}

__set_clean_branch_color ()
{
    echo "\[\033[0;92m\]"
}

with_branch_color='$(\
    '$(__is_status_clean)'\
    if [ $? -eq 0 ];\
    then\
        echo "'$(__set_clean_branch_color)'";\
    else\
        echo "'$(__set_dirty_branch_color)'";\
    fi\
)'

__set_dollar_color ()
{
    echo "\[\033[38;5;40m\]"
}

__set_default_color ()
{
    echo "\[\033[0m\]"
}
__is_git_directory ()
{
    echo "git branch &> /dev/null"
}

current_branch_name='$(\
    b=$(git symbolic-ref HEAD 2> /dev/null);\
    if [ -n "$b" ];\
    then\
        echo " ("${b##refs/heads/}")";\
    fi\
)'

print_branch='$(echo '"$with_branch_color"''"$current_branch_name"')'

print_user=$(__set_user_color)'\u'
print_colon=$(__set_default_color)': '
path=$(__set_path_color)'\w'
print_branch_if_git_directory='$(\
    '$(__is_git_directory)';\
    if [ $? -eq 0 ];\
    then\
        echo "'$print_branch'";\
    fi\
)'
print_dollar=$(__set_dollar_color)' \$ '
reset_color=$(__set_default_color)

export PS1=\
$print_user\
$print_colon\
$path\
$print_branch_if_git_directory\
$print_dollar\
$reset_color
