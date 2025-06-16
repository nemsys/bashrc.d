#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Export custom env.vars                                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# You can add something here only if is not security sensible.

# Editor settings
export VISUAL="code --wait"   
export EDITOR="$VISUAL"       


# Rust environment
. "$HOME/.cargo/env"          

# Default download folder
export XDG_DOWNLOAD_DIR="$HOME/Downloads"  

# pyenv
export PYENV_ROOT="$HOME/.pyenv"

# PATH
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/data/bin:$PATH"

# Load environment variables from .env if it exists
if [ -f "$HOME/.env" ]; then
    export $(cat "$HOME/.env" | xargs)  
fi


