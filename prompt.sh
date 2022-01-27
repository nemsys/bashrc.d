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
# to add git branch name
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/~\1/'
}

host=$(hostname -s)
user=$(whoami)

TERMWIDTH=${COLUMNS}

# PS1="\[${LIGHTPURPLE}\]${user}\[${NC}\]@\[${PURPLE_BLUE}\]${host}\[${NC}\]->"

export PS1="\[${LIGHTPURPLE}\]${user}\[${NC}\]@\[${PURPLE_BLUE}\]${host}\[${NC}\]\[${RED}\]\$(parse_git_branch)\[${NC}\]->"
# export PS1="\[${LIGHTPURPLE}\]${user}\[${NC}\]@\[${PURPLE_BLUE}\]${host}\[${NC}\]\[${RED}\]\$(parse_git_branch)\[${NC}\]/\$(short_pwd)->"

# export PS1="\u \$(short_pwd) \$ "

_unset_vars
_bash_history_sync
