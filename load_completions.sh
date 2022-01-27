#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Everything related to auto completions is customized here          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# load other completions
public_bashrc_dir='.bashrc.d'
private_bashrc_dir="${public_bashrc_dir}/.private"

files_to_load=(
    #gulp_completions.sh
    "${HOME}/${public_bashrc_dir}/completions/npm_completion.sh"
    "${HOME}/${public_bashrc_dir}/completions/nodejs_completion.sh"
    "${HOME}/${public_bashrc_dir}/completions/git-completion.sh"
    # "${HOME}/${public_bashrc_dir}/completions/ng-completions.sh"
    "${HOME}/${public_bashrc_dir}/completions/pip-bash-completion.sh"
    # "${HOME}/${public_bashrc_dir}/completions/python-argcomplete.sh"
    "${HOME}/${public_bashrc_dir}/completions/jupyter-completion.sh.sh"
)
for bash_file in "${files_to_load[@]}"; do
    # load public files
    if [ -f "$bash_file" ]; then
        source "$bash_file"
    fi
    # load private files
    # if [ -f "${HOME}/${private_bashrc_dir}/$bash_file" ]; then
    #     source "${HOME}/${private_bashrc_dir}/$bash_file"
    # fi
done