#!/bin/bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Place to define all custom aliases                                 #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# ---------------------------------- basics ---------------------------------- #
alias histfind='history | grep $1'
alias ls='ls -G  --color=auto'
alias ll='ls -lsa  --color=auto'
alias lr='ls -lsrta  --color=auto'
alias grep='grep --color=auto'
alias md='mkdir -v -p'        # make path tree
# alias trackpointSettings='cd /sys/devices/platform/i8042/serio1/serio2/'

# ---------------------------------- python ---------------------------------- #
# alias python='/usr/bin/python3.8'
# alias qtdesigner='pyqt5-tools designer'
alias ave='deactivate &> /dev/null; source ./.venv/bin/activate'
alias dve='deactivate'
# alias jn='nohup jupyter notebook &'


# ---------------------------------- courses --------------------------------- #
alias cdprogress="cd /home/nemsys/projects/courses/ProgressBG"
alias cdprogressFrontEndBeg="cd /home/nemsys/projects/courses/ProgressBG/ProgressBG-Front-End-Dev/"
alias cdnetitPython="cd /home/nemsys/projects/courses/netIT/PythonCourseNetIT/"

# alias countdownTimer="bash /home/nemsys/projects/courses/.bin/CountdownTimer/countdownTimer.sh"

# --------------------------------- calendar --------------------------------- #
alias ncal="ncal -Mb"
alias cal="ncal -Mb"

# ----------------------------------- git: ----------------------------------- #
alias ggs='git status'
alias ggl='git log --oneline --graph'
# alias ggca='git add -A && git commit -m"'
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

# sort by comitter date (ASC) and show:
alias git_branch_sort_committerdate="git branch --sort=committerdate --format='%(committerdate:short) %(refname:short)'"


# ----------------------------------- VSCode: ----------------------------------- #
alias code-nemsys='code --user-data-dir ~/.vscode-nemsys'
# alias code-work='code --user-data-dir ~/.vscode-work'



