#!/bin/bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Place to define all custom aliases                                 #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
alias histfind='history | grep $1'
alias ls='ls -G  --color=auto'
alias ll='ls -lsa  --color=auto'
alias lr='ls -lsrta  --color=auto'
alias grep='grep --color=auto'
alias md='mkdir -v -p'        # make path tree
# alias trackpointSettings='cd /sys/devices/platform/i8042/serio1/serio2/'

#python
# alias python='/usr/bin/python3.8'
# alias qtdesigner='pyqt5-tools designer'
alias ave='deactivate &> /dev/null; source ./.venv/bin/activate'
alias dve='deactivate'
# alias jn='nohup jupyter notebook &'

#mycli
# alias mycli_root="mycli -u root -p'c1u2r3e4'"

# local system
alias cdprogress="cd /home/nemsys/projects/courses/ProgressBG"
alias cdprogressFrontEndBeg="cd /home/nemsys/projects/courses/ProgressBG/ProgressBG-Front-End-Dev/"
alias cdnetitPython="cd /home/nemsys/projects/courses/netIT/PythonCourseNetIT/"

alias countdownTimer="bash /home/nemsys/projects/courses/.bin/CountdownTimer/countdownTimer.sh"

# other
alias ncal="ncal -Mb"
alias cal="ncal -Mb"

### git:
# sort by comotterdate (ASC) and show:
alias git_branch_sort_committerdate="git branch --sort=committerdate --format='%(committerdate:short) %(refname:short)'"

