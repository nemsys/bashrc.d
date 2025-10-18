#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Customize terminal prompt                                 									         #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# get the Git branch and status string using official __git_ps1 function.
get_git_status() {
    # Check if __git_ps1 function is available
    if command -v __git_ps1 &> /dev/null; then
        __git_ps1 "(%s)"
    else
        # Fallback to my simpler parser
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
    fi
}

# Initialize variables
host=$(hostname -s)
user=$(whoami)

export PS1="\[${LIGHTPURPLE}\]${user}\[${NC}\]@\[${PURPLE_BLUE}\]${host}\[${NC}\]\[${RED}\]\$(get_git_status)\[${NC}\]->"
# export PS1="\[${LIGHTPURPLE}\]${user}\[${NC}\]@\[${PURPLE_BLUE}\]${host}\[${NC}\]\[${RED}\]\$(parse_git_branch)\[${NC}\]/\$(short_pwd)->"


_bash_history_sync
