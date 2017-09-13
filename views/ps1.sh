#!/bin/bash

__is_status_clean ()
{
    echo `git status` | grep "nothing to commit" > /dev/null 2>&1;
}

with_user_color="\[\033[38;5;45m\]"
with_path_color="\[\033[38;5;87m\]"
with_clean_branch_color="\[\033[38;5;228m\]"
with_dirty_branch_color="\[\033[0;92m\]"
with_branch_color='$(\
    __is_status_clean;\
    if [ $? -eq 0 ];\
    then\
        echo "'$with_dirty_branch_color'";\
    else\
        echo "'$with_clean_branch_color'";\
    fi;\
)'
with_dollar_color="\[\033[38;5;40m\]"
with_default_color="\[\033[0m\]"

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


print_user=$with_user_color'\u'
print_colon=$with_default_color': '
print_path=$with_path_color'\w'
print_branch_if_git_directory='$(\
    __is_git_directory;\
    if [ $? -eq 0 ];\
    then\
        echo "'$with_branch_color'"$(__print_current_branch);\
    fi\
)'
print_dollar=$with_dollar_color' \$ '
reset_color=$with_default_color

export PS1=\
$print_user\
$print_colon\
$print_path\
$print_branch_if_git_directory\
$print_dollar\
$reset_color
