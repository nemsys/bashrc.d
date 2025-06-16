#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Everything related to customm scripts/commands loading             #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
public_bashrc_dir="$HOME/.bashrc.d"
private_bashrc_dir="${public_bashrc_dir}/.private"

files_to_load=(
    "${public_bashrc_dir}/custom_commands/git.sh"
    "${public_bashrc_dir}/custom_commands/display_commands.sh"
)

for bash_file in "${files_to_load[@]}"; do
    # load public files
    if [ -f "$bash_file" ]; then
        source "$bash_file"
    fi

    # load private files
    private_file="${private_bashrc_dir}/$(basename "$bash_file")"
    if [ -f "$private_file" ]; then
        source "$private_file"
    fi
done