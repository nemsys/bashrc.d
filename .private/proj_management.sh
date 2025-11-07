#!/bin/bash

# export DISPLAY=:0

launchProject_ProgressBG-Front-End-Dev(){
	clear
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-Front-End-Dev/'

	cd $root_dir
	bash .bin/load_chrome.sh > /dev/null 2>&1
	# echo "Chrome started: $root_dir"

	# `.bin/vscode_start.sh`
	# echo 'VScode started'


	# go to Labs branch for the given group by week day number
	cd "${root_dir}/Labs"

	day_name=`date '+%a'`
	hour=`date '+%H'`
	# echo "${day_name}, ${hour}"

	# clear
	# if [[ $day_name == "Tue" || $day_name == "Thu" ]]; then
	# 	git checkout 16_WD_WD
	# fi
	if [[ $day_name == "Sat" || $day_name == "Sun" ]]; then
		git checkout 17_WD_WE
	fi

	# display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi

	# start zoom meating
	xdg-open zoommtg://zoom.us/join?action=join&confno=92667386467&pwd=dVdEdEx4QjhtZDZxNTZvZ2lDa3hVdz09
	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

	# start countdownTimer:
	# countdownTimer 10
}


launchProject_PythonCourseNetIT(){
	clear

	root_dir='/home/nemsys/projects/courses/netIT/PythonCourseNetIT'

	# gnome-terminal --window-with-profile=night --working-directory=$code_wd -e 'pipenv shell'

	# go to workspace 1
	# wmctrl -s 1

	cd $root_dir
	bash .bin/load_chrome.sh > /dev/null 2>&1
	# echo "Chrome started: $root_dir"

	# `.bin/vscode_start.sh`
	# echo 'VScode started'

	# day_name=`date '+%a'`
	# hour=`date '+%H'`
	# # echo "${day_name}, ${hour}"

	# clear
	# # go to Labs branch for the given group by week day number
	# if [[ $day_name == "Thu" || $day_name == "Fri" || $day_name == "Sat" || $day_name == "Sun" ]]
	# then
	# 	cd "${root_dir}/PythonCourseNetIT-Labs/"
	# else
	# 	cd "${root_dir}/PythonCourse307-Labs/"
	# fi

	cd "${root_dir}/PythonCourse307-Labs/"

	# display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi

	# pipenv shell
	source .venv/bin/activate

	# start zoom meating
	# xdg-open zoommtg://zoom.us/join?action=join
	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

	# start countdownTimer:
	# countdownTimer 10
	# . /home/nemsys/projects/courses/.bin/CountdownTimer/countdownTimer.sh
}

launchProject_ProgressBG-JS-Advanced_React(){
	clear
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-JS-Advanced-React/'
	cd $root_dir
	`.bin/load_chrome.sh > /dev/null 2>&1`
	echo 'Chrome started'

	# go to Labs branch for the given group by week day number
	cd "${root_dir}/Labs"

	day_name=`date '+%a'`
	hour=`date '+%H'`
	# echo "${day_name}, ${hour}"

	# clear
	# if [[ $day_name == "Sat" || $day_name == "Sun" ]]; then
	# 	if [ $hour -lt 13 ]; then
	# 		git checkout 14_WD_WE
	# 	else
	# 		git checkout WD_Adv_Ind
	# 	fi
	# else
	# 	git checkout 14_WD_WE
	# fi

	# display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi


	# start zoom meating
	xdg-open zoommtg://zoom.us/join?action=join
	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

	# start countdownTimer:
	# countdownTimer 10
}

# cd /home/nemsys/projects/courses/ProgressBG/ProgressBG-MLwithPython/ProgressBG-Python/
launchProject_ProgressBG-MLwithPython(){
	slides_wd='/home/nemsys/projects/courses/ProgressBG/ProgressBG-MLwithPython/ProgressBG-MLwithPython-Slides'
	code_wd='/home/nemsys/projects/courses/ProgressBG/ProgressBG-MLwithPython/ProgressBG-MLwithPython-Code/'

	# # go to workspace 1:
	# wmctrl -s 1
	# nemo /home/nemsys/PROGRAMMING_BOOKS/Python/AI/DataScience/MachineLearning &
	# firefox https://www.google.com/ &

	# sleep 2

	# # go to workspace 0:
	# wmctrl -s 0

	# Automate ProgressBG-MLwithPython
	cd $slides_wd

	bash ../.bin/load_chrome.sh
	echo 'Chrome started'

	# bash .bin/subl_start.sh
	# echo 'sublime text started'

	# get current git branch
	branch_name=$(git symbolic-ref -q HEAD)
	branch_name=${branch_name##refs/heads/}
	branch_name=${branch_name:-HEAD}


	if [[ $branch_name = "master" ]];then
		bash ../.bin/live-server.sh
	fi


	# gnome-terminal --window-with-profile=night --working-directory=$code_wd -e 'pipenv shell'

	# if [[ $branch_name = "labs" ]]
	# then
	# 	bash .bin/vscode_start.sh
	# else
	# 	printf '=%.0s' {1..50}
	# 	printf '\n~~~>CHANGE TO LABS BRANCH<~~~\n'
	# 	printf '=%.0s' {1..50}
	# 	printf '\n'
	# fi

	# start countdownTimer:
	# countdownTimer 10
	# . /home/nemsys/projects/courses/.bin/CountdownTimer/countdownTimer.sh
}

launchProject_ProgressBG-Python-UniCredit(){
	clear
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-Python-UniCredit'

	cd $root_dir
	bash .bin/load_chrome.sh > /dev/null 2>&1
	# echo "Chrome started: $root_dir"

	# `.bin/vscode_start.sh`
	# echo 'VScode started'


	# go to Labs branch for the given group by week day number
	cd "${root_dir}/ProgressBG-Python-UniCredit-Labs"

	day_name=`date '+%a'`
	hour=`date '+%H'`
	# echo "${day_name}, ${hour}"

	# clear
	# if [[ $day_name == "Tue" || $day_name == "Thu" ]]; then
	# 	git checkout 16_WD_WD
	# fi
	# if [[ $day_name == "Sat" || $day_name == "Sun" ]]; then
	# 	git checkout 17_WD_WE
	# fi

	# display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi

	# start zoom meating
	# xdg-open zoommtg://zoom.us/join?action=join&confno=92667386467&pwd=dVdEdEx4QjhtZDZxNTZvZ2lDa3hVdz09
	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

	# start countdownTimer:
	# countdownTimer 10
}

# launchProject_ProgressBG-Angular-Crash-Course(){
# 	clear
# 	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-Angular-Crash-Course/'

# 	cd $root_dir
# 	bash .bin/load_chrome.sh > /dev/null 2>&1
# 	# echo "Chrome started: $root_dir"

# 	# `.bin/vscode_start.sh`
# 	# echo 'VScode started'


# 	# go to Labs branch for the given group by week day number
# 	cd "${root_dir}/ProgressBG-Angular-Crash-Course-Labs"

# 	day_name=`date '+%a'`
# 	hour=`date '+%H'`
# 	# echo "${day_name}, ${hour}"

# 	# display TODO:
# 	# clear
# 	todos=$(tail .TODO)

# 	if [[ ! -z "$todos" ]] ; then
# 		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 		echo -e ${LIGHTBLUE}"${todos}"${NC}
# 		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 	fi
# }

# /home/nemsys/projects/courses/IT-Academy/IT-Academy-JS-Fundamentals
# launchProject_IT-Academy-JS-Fundamentals(){
# 	cd /home/nemsys/projects/courses/IT-Academy/IT-Academy-JS-Fundamentals/Labs/
# 	#bash .bin/proj_bashrc.sh
# 	#echo 'custom .bashrc loaded'

# 	bash ../.bin/load_chrome.sh
# 	echo 'Chrome started'

# 	# bash .bin/vscode_start.sh
# 	# echo 'VScode started'

# 	# get current git branch
# 	branch_name=$(git symbolic-ref -q HEAD)
# 	branch_name=${branch_name##refs/heads/}
# 	branch_name=${branch_name:-HEAD}


# 	if [[ $branch_name = "gh-pages" ]];then
# 		bash .bin/live-server.sh
# 		echo "Live server started"
# 	fi
# }

# launchProject_ProgressBG-Python(){
# 	cd /home/nemsys/projects/courses/ProgressBG/ProgressBG-Python/

# 	bash .bin/proj_bashrc.sh
# 	echo 'custom .bashrc loaded'

# 	bash .bin/load_chrome.sh
# 	echo 'Chrome started'

# 	bash .bin/gterm_start.sh
# 	echo 'Terminal Day mode started'

# 	bash .bin/vscode_start.sh
# 	echo 'VScode started'

# 	bash .bin/subl_start.sh
# 	echo 'sublime text started'

# 	# get current git branch
# 	branch_name=$(git symbolic-ref -q HEAD)
# 	branch_name=${branch_name##refs/heads/}
# 	branch_name=${branch_name:-HEAD}


# 	if [[ $branch_name = "gh-pages" ]];then
# 		bash .bin/live-server.sh
# 		echo "Live server started"
# 	fi


# 	# load .venv
# 	# pipenv shell
# 	# echo 'pipenv shell activated'
# }


# /home/nemsys/projects/courses/ProgressBG/ProgressBG-VC-Django/
# launchProject_ProgressBG-VC-Django(){
# 	slides_wd='/home/nemsys/projects/courses/ProgressBG/ProgressBG-VC-Django/ProgressBG-VC-Django-Slides/'
# 	labs_wd='/home/nemsys/projects/courses/ProgressBG/ProgressBG-VC-Django/ProgressBG-VC-Django-Labs/'

# 	# Load the slides:
# 	cd $slides_wd

# 	# bash .bin/proj_bashrc.sh
# 	# echo 'custom .bashrc loaded'

# 	bash .bin/load_chrome.sh
# 	echo 'Chrome started'

# 	bash .bin/gterm_start.sh
# 	echo 'Terminal Day mode started'

# 	# bash .bin/vscode_start.sh
# 	# echo 'VScode started'

# 	bash .bin/subl_start.sh
# 	echo 'sublime text started'

# 	# get current git branch
# 	branch_name=$(git symbolic-ref -q HEAD)
# 	branch_name=${branch_name##refs/heads/}
# 	branch_name=${branch_name:-HEAD}

# 	if [[ $branch_name = "gh-pages" ]];then
# 		bash .bin/live-server.sh
# 		echo "Live server started"
# 	fi

# 	### bring labs terminal with pipenv activated:
# 	gnome-terminal --window-with-profile=day --working-directory=$labs_wd -e 'pipenv shell'
# }

# /home/nemsys/projects/courses/ProgressBG/ProgressBG-VMware-Python/ProgressBG-VMware-Python-Slides
# launchProject_ProgressBG-VMware-Python(){
# 	slides_wd='/home/nemsys/projects/courses/ProgressBG/ProgressBG-VMware-Python/ProgressBG-VMware-Python-Slides'
# 	labs_wd='/home/nemsys/projects/courses/ProgressBG/ProgressBG-VMware-Python/ProgressBG-VMware-Python-Code'

# 	# Load the slides:
# 	cd $slides_wd

# 	rm nohup.out

# 	# bash .bin/proj_bashrc.sh
# 	# echo 'custom .bashrc loaded'

# 	bash .bin/load_chrome.sh
# 	echo 'Chrome started'

# 	bash .bin/gterm_start.sh
# 	echo 'Terminal Day mode started'

# 	# bash .bin/vscode_start.sh
# 	# echo 'VScode started'

# 	bash .bin/subl_start.sh
# 	echo 'sublime text started'

# 	# get current git branch
# 	branch_name=$(git symbolic-ref -q HEAD)
# 	branch_name=${branch_name##refs/heads/}
# 	branch_name=${branch_name:-HEAD}

# 	if [[ $branch_name = "gh-pages" ]];then
# 		bash .bin/live-server.sh
# 		echo "Live server started"
# 	fi

# 	### bring labs terminal with pipenv activated:
# 	gnome-terminal --window-with-profile=day --working-directory=$labs_wd -e 'pipenv shell'
# }


# /home/nemsys/projects/courses/ProgressBG/SAG-JS/SAG-JS-Slides
# launchProject_SAG-JS(){
# 	cd /home/nemsys/projects/courses/ProgressBG/SAG-JS/SAG-JS-Slides
# 	#bash .bin/proj_bashrc.sh
# 	#echo 'custom .bashrc loaded'

# 	bash .bin/load_chrome.sh
# 	echo 'Chrome started'

# 	# bash .bin/vscode_start.sh
# 	# echo 'VScode started'

# 	bash .bin/subl_start.sh
# 	echo 'sublime text started'

# 	# get current git branch
# 	branch_name=$(git symbolic-ref -q HEAD)
# 	branch_name=${branch_name##refs/heads/}
# 	branch_name=${branch_name:-HEAD}


# 	if [[ $branch_name = "gh-pages" ]];then
# 		bash .bin/live-server.sh
# 		echo "Live server started"
# 	fi
# }









