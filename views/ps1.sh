#!/bin/bash

register_ps1 ()
{
    is_in_git_internal='$(\
        DIR="$(pwd)";\
        if [[ $DIR = *"/.git/"* || $DIR = *"/.git" ]];\
        then\
            exit 0;
        else\
            exit 1;
        fi;\
    )';

    is_status_clean="echo \`git status\` | grep \"nothing to commit\" > /dev/null 2>&1;";

    set_default_color="\[\033[0m\]";

    set_user_color="\[\033[38;5;45m\]"

    set_path_color="\[\033[38;5;87m\]";

    set_dirty_branch_color="\[\033[38;5;228m\]";

    set_clean_branch_color="\[\033[0;92m\]";

    set_unclear_branch_color="\[\033[38;5;249m\]";

    with_branch_color='$(\
        '$is_in_git_internal'
        if [ $? -eq 0 ];\
        then\
            echo "'$set_unclear_branch_color'";\
        else\
            '$is_status_clean'\
            if [ $? -eq 0 ];\
            then\
                echo "'$set_clean_branch_color'";\
            else\
                echo "'$set_dirty_branch_color'";\
            fi;\
        fi;\
    )'

    set_dollar_color="\[\033[38;5;40m\]";

    is_git_directory="git branch &> /dev/null";

    current_branch_name='$(\
        b=$(git symbolic-ref HEAD 2> /dev/null);\
        if [ -n "$b" ];\
        then\
            echo " ("${b##refs/heads/}")";\
        fi\
    )'

    print_branch='$(echo '"$with_branch_color"''"$current_branch_name"')'

    print_user=$set_user_color'\u'

    print_colon=$set_default_color': '

    path=$set_path_color'\w'

    print_branch_if_git_directory='$(\
        '$is_git_directory';\
        if [ $? -eq 0 ];\
        then\
            echo "'$print_branch'";\
        fi\
    )'

    print_dollar=$set_dollar_color' \$ '

    reset_color=$set_default_color


    original_ps1=$PS1;

    ps1=\
$print_user\
$print_colon\
$path\
$print_branch_if_git_directory\
$print_dollar\
$reset_color;

    echo_ps1_if_user_opened_bash='$(\
        if [ "$(whoami)" == "'$(whoami)'" ];\
        then\
            echo "'$ps1'";\
        else\
            echo "'$original_ps1'";\
        fi;\
    )'

    export PS1=$echo_ps1_if_user_opened_bash
}
register_ps1
unset register_ps1
