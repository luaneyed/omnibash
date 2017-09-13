#!/bin/bash

__is_status_clean ()
{
    echo `git status` | grep "nothing to commit" > /dev/null 2>&1;
}

__set_user_color ()
{
    printf "\033[38;5;45m"
}

__set_path_color ()
{
    printf "\033[38;5;87m"
}

__set_branch_color ()
{
    __is_status_clean
    if [ $? -eq 0 ]
    then    #   dirty branch color
        printf "\033[0;92m"
    else    #   clean branch color
        printf "\033[38;5;228m"
    fi
}

__set_dollar_color ()
{
    printf "\033[38;5;40m"
}

__reset_color ()
{
    printf "\033[0m"
}

__is_git_directory ()
{
    git branch &> /dev/null
}

__print_current_branch ()
{
    local b="$(git symbolic-ref HEAD 2> /dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

__print_branch_if_git_directory ()
{
    __is_git_directory
    if [ $? -eq 0 ]
    then
        echo "$(__set_branch_color)$(__print_current_branch)"
    fi
}

print_user='$(__set_user_color)\u'
print_colon='$(__reset_color): '
print_path='$(__set_path_color)\w'
print_branch_if_git_directory='$(__print_branch_if_git_directory)'
print_dollar='$(__set_dollar_color) \$ '
reset_color='$(__reset_color)'

export PS1=\
$print_user\
$print_colon\
$print_path\
$print_branch_if_git_directory\
$print_dollar\
$reset_color
