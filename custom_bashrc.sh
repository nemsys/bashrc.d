#!/usr/bin/env bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# custom bashrc, sourced from ~/.bashrc
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
export PYENV_ROOT="$HOME/.pyenv"

export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/data/bin:$PATH"


#pyenv:
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    # eval "$(pyenv virtualenv-init -)"
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


### load custom bash config files
public_bashrc_dir="$HOME/.bashrc.d"
private_bashrc_dir="${public_bashrc_dir}/.private"


# list is used to control the load sequence
files_to_load=(
    env_variables.sh       # Environment variable definitions
    functions.sh           # Utility functions
    colors.sh              # Color definitions for styling
    history.sh             # History-related configurations
    aliases.sh             # Custom aliases
    prompt.sh              # Prompt customization
    window_title.sh        # Terminal window title settings
    proj_management.sh     # Project management scripts
    load_completions.sh    # Auto-completion scripts
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

# Print TODO or Fortune
Welcome_and_TODO


# Get color support for 'less'
# export LESS="--RAW-CONTROL-CHARS"

if command -v direnv 1>/dev/null 2>&1; then
    eval "$(direnv hook bash)"
fi
