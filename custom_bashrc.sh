#!/usr/bin/env bash

# load perlbrew bashrc
# source ${HOME}/perl5/perlbrew/etc/bashrc

# add $ENV{PERLTIDY} perltidyrc file
# export PERLTIDY="${HOME}/projects/perl5/.perltidyrc"

#python:
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
 eval "$(pyenv virtualenv-init -)"
fi

# eval "$(pyenv init -)"

#pipenv
# eval "$(pipenv --completion)"


