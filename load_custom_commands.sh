#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Everything related to customm scripts/commands loading             #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
public_bashrc_dir='.bashrc.d'
private_bashrc_dir="${public_bashrc_dir}/.private"

files_to_load=(
    #gulp_completions.sh
    # "${HOME}/${public_bashrc_dir}/custom_commands/git.sh"
    # "${HOME}/${public_bashrc_dir}/custom_commands/display_commands.sh"
)
for bash_file in "${files_to_load[@]}"; do
    # load public files
    if [ -f "$bash_file" ]; then
        source "$bash_file"
    fi

    # load private files
    if [ -f "${HOME}/${private_bashrc_dir}/$bash_file" ]; then
        source "${HOME}/${private_bashrc_dir}/$bash_file"
    fi
done