#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Customize terminal prompt                                 									         #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
############################# FUNCTIONS ##############################
_unset_vars() {
  unset fillsize cut temp TERMWIDTH pwd_git host user
  unset conf_dir cprompt
  unset version rprompt
  unset branch gprompt stat
}
######################################################################
# Function to parse Git branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/~\1/'
}

# Function to format the prompt
format_prompt() {
    local git_branch
    git_branch=$(parse_git_branch)
    PS1="\[${LIGHTPURPLE}\]${user}\[${NC}\]@\[${PURPLE_BLUE}\]${host}\[${NC}\]\[${RED}\]${git_branch}\[${NC}\]->"
}

# Initialize variables
host=$(hostname -s)
user=$(whoami)
TERMWIDTH=${COLUMNS}

# Initialize the prompt
format_prompt

# Unset temporary variables
_unset_vars
_bash_history_sync
