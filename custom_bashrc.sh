#!/usr/bin/env bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# custom bashrc, sourced from ~/.bashrc
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
# if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#     debian_chroot=$(cat /etc/debian_chroot)
# fi

# set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color|*-256color) color_prompt=yes;;
# esac


### load custom bash config files
public_bashrc_dir="$HOME/.bashrc.d"
private_bashrc_dir="${public_bashrc_dir}/.private"


# list is used to control the load sequence
files_to_load=(
    env_variables.sh
    # shell_settings.sh
    functions.sh
    # ssh.sh
    colors.sh
    history.sh
    aliases.sh
    prompt.sh
    window_title.sh
    proj_management.sh
    load_completions.sh
    load_custom_commands.sh
    trackpointSetUp.sh
)

for bash_file in "${files_to_load[@]}"; do
    # load public files
    if [ -f "${public_bashrc_dir}/$bash_file" ]; then
        source "${public_bashrc_dir}/$bash_file"
    fi
    # load private files
    if [ -f "${private_bashrc_dir}/$bash_file" ]; then
        source "${private_bashrc_dir}/$bash_file"
    fi
done


unset bash_file files_to_load

#add comment to test git move
# welcome
TODO_list


# Get color support for 'less'
# export LESS="--RAW-CONTROL-CHARS"


# load perlbrew bashrc
# source ${HOME}/perl5/perlbrew/etc/bashrc

# add $ENV{PERLTIDY} perltidyrc file
# export PERLTIDY="${HOME}/projects/perl5/.perltidyrc"

#python:
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
 eval "$(pyenv virtualenv-init -)"
fi

#pipenv
# eval "$(pipenv --completion)"


