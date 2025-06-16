#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Everything related to auto completions is customized here          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# load other completions
public_bashrc_dir="$HOME/.bashrc.d"
private_bashrc_dir="${public_bashrc_dir}/.private"

# Dynamically generate files_to_load array
files_to_load=($(find "${public_bashrc_dir}/completions" -type f -name "*.sh"))

for bash_file in "${files_to_load[@]}"; do
    if [ -f "$bash_file" ]; then
        source "$bash_file"
    else
        echo "Warning: Completion file $bash_file not found."
    fi
done