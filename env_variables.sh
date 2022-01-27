#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Export custom env.vars                                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# You can add something here only if is not security sensible.

# PATH
export PATH="${HOME}/bin:${PATH}"
export PATH="$PATH:/home/nemsys/.local/bin"
# export PATH="$PATH:/usr/local/go/bin"
# export PATH="$PATH:/home/nemsys/projects/perl5/shell_commands"
# export PATH=~/.rakudobrew/bin:$PATH

# export EDITOR="vim"
# export VISUAL=vim
export VISUAL="code --wait"
export EDITOR="$VISUAL"



# GO:
#export GOPATH="$HOME/gopath"
#export PATH="$GOPATH:$GOPATH/bin:$PATH"


#Python stuff:
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# export PIPENV_VENV_IN_PROJECT=1
# export PIPENV_MAX_DEPTH=7

# SASS
# export SASS_ROOT="/opt/dart-sass"
# export PATH="$SASS_ROOT:$PATH"

#others:
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
# export ANDROID_HOME=$HOME/Android/Sdk
