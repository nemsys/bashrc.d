#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Set Terminal Window title                                         #
#                                                                   #
# Based on: https://mg.pov.lt/blog/bash-prompt.html                 #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    # PROMPT_COMMAND='echo -ne "\033]0;/${PWD}\007"'
    PROMPT_COMMAND='echo -ne "\033]0;$(short_pwd)\007"'
    # PROMPT_COMMAND='echo -ne "\033[0;34m]]0;:/${PWD}\007"'

    # Show the currently running command in the terminal title:
    # http://www.davidpashley.com/articles/xterm-titles-with-bash.html
    show_command_in_title_bar()
    {
        case "$BASH_COMMAND" in
            *\033]0*)
                # The command is trying to set the title bar as well;
                # this is most likely the execution of $PROMPT_COMMAND.
                # In any case nested escapes confuse the terminal, so don't
                # output them.
                ;;
            *)
                echo -ne "\033]0;${USER}@${HOSTNAME}:/${PWD} -->${BASH_COMMAND}\007"
                ;;
        esac
    }
    trap show_command_in_title_bar DEBUG
    ;;
*)
    ;;
esac
