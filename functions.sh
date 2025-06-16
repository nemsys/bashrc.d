#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# All custom functions needed for bash configuration                 #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
welcome() {
    which fortune > /dev/null
    fortune_check=$?
    case $- in
    *i*)    # interactive shell
	    echo -e "${WHITE}Welcome to ${LIGHTGREEN}$(hostname)${WHITE} at ${YELLOW}"$(date +"%A [%d.%m.%Y]"), ${YELLOW}"$(date +"%R")"${NC}
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        if [[ $fortune_check -eq 0 ]] ; then
            echo -e ${LIGHTBLUE}$(fortune -s)${NC}
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        fi
    ;;
    *)      # non-interactive shell
    ;;
    esac
}

Welcome_and_TODO(){
  case $- in
    *i*)    # interactive shell
        echo -e "${LIGHTBLUE}"$(date +"%A [%d.%m.%Y]"), ${LIGHTBLUE}"$(date +"%R")"${NC}
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        if [ -f "$HOME/.TODO" ]; then
          todos=$(cat ~/.TODO)
        else
          todos=''
        fi

        if [[ ! -z "$todos" ]] ; then
          echo -e ${TEST}"${todos}"${NC}
        else
            which fortune > /dev/null
            fortune_check=$?
            if [[ $fortune_check -eq 0 ]] ; then
              echo -e ${LIGHTBLUE}$(fortune -s)${NC}
            fi
        fi

        if [ -f "$HOME/.TODOS" ]; then
          todos=$(tail ~/.TODOS --lines=3)
          if [[ ! -z "$todos" ]] ; then
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            echo -e ${LIGHTBLUE}"${todos}"${NC}
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          fi
        fi
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    ;;
    *)      # non-interactive shell
    ;;
    esac

}

full_colors(){
    ###################################################
    #
    #   This function echoes a bunch of color codes to the
    #   terminal to demonstrate what's available.  Each
    #   line is the color code of one forground color,
    #   out of 17 (default + 16 escapes), followed by a
    #   test use of that color on all nine background
    #   colors (default + 8 escapes).
    #

    T='test '   # The test text

    echo -e "\n                 40m     41m     42m     43m\
         44m     45m     46m     47m";

    for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
               '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
               '  36m' '1;36m' '  37m' '1;37m';
      do FG=${FGs// /}
      echo -en " $FGs \033[$FG  $T  "
      for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
        # do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
        do echo -en "\033[$FG\033[$BG  $T  \033[0m";
      done
      echo;
    done
    echo
}

short_pwd() {
    cwd=$(pwd | perl -F/ -ane 'print join( "/", map { $i++ < @F - 3 ?  substr $_,0,1 : $_ } @F)')

    echo -n $cwd
}


# ------------------------------------ git ----------------------------------- #

ggac() {
	if [ -z "$1" ]
	then
		echo 'I need commit message!'
	else
		git add -A && git commit -m"$1"
	fi
}
ggacp() {
	if [ -z "$1" ]
	then
		echo 'I need commit message!'
	else
		git add -A && git commit -m"$1" && git push
	fi
}
change_commit_dates()
{
	timestamp_format='%a %b %d %H:%M:%S %Y %z'

	now=$(date +"${timestamp_format}")
	new_date=${now}

	usage()
	{
	    echo "usage: change_commit_date [[[-n ] [-i]] | [-h]]"
	    echo "-n: use curent datetime"
	    echo "-e: enter custom datetime (${timestamp_format})"
	}

	get_cmd_args()
	{
		while [ "$1" != "" ]; do
		    case $1 in
		        -n | --now )
		                                new_date=${now}
		                                ;;
		        -i | --interactive )    interactive=1
		                                ;;
		        -h | --help )           usage
		                                exit
		                                ;;
		        * )                     usage
		                                exit 1
		    esac
		    shift
		done
	}


	get_user_data()
	{
		echo -n "Enter timestamp (${now}): "
		read response

		if [ -n "$response" ]; then
		    new_date=$response
		fi
	}


	get_user_data

	echo "The commit date will be changed to: ${new_date}. Are you sure?[y]:"
	read continue


	if [ "$continue" == "y" ]; then
		# GIT_COMMITTER_DATE="Mon 20 Aug 2018 20:19:19 BST" git commit --amend --no-edit --date "Mon 20 Aug 2018 20:19:19 BST"
		GIT_COMMITTER_DATE=\""${new_date}"\" GIT_AUTHOR_DATE=\""${new_date}"\" git commit --amend --no-edit --date \""${new_date}"\"
	else
		echo "Ok, no change will be made. Good Bye!"
	fi
}
