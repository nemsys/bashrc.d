#!/bin/bash

# export DISPLAY=:0

launchProject_ProgressBG-Front-End-Dev(){
	group='23_FE_WE'
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-Front-End-Dev/'

	clear
	cd $root_dir
	bash .bin/load_chrome.sh > /dev/null 2>&1

	cd "${root_dir}/Labs"
	### go to Labs branch for the given group by week day number
	# day_name=`date '+%a'`
	# hour=`date '+%H'`
	# echo "${day_name}, ${hour}"

	# clear
	# if [[ $day_name == "Mon" || $day_name == "Wed" ]]; then
	# 	git checkout 17_WD_WD
	# elif [[ $day_name == "Sat" || $day_name == "Sun" ]]; then
	# 	git checkout 19_WD_WE
	# else
	# 	git checkout master
	# fi
	git checkout $group

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
	# countdownTimer 10-Labs
}

launchProject_ProgressBG-JS-Advanced_React(){
	clear
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-JS-Advanced-React/'
	cd $root_dir

	# `.bin/load_chrome.sh &> /dev/null 2>&1`
	bash .bin/load_chrome.sh &> /dev/null 2>&1
	# echo 'Chrome started'

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

	git checkout 11_JS_Advanced_React

	# display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi


	# start zoom meating
	# xdg-open zoommtg://zoom.us/join?action=join
	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

	# start countdownTimer:
	# countdownTimer 10
}

launchProject_ProgressBG-JS-Basics(){
	### init
	group='2_JS_Basics'
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-JS-Basics/'

	clear
	cd $root_dir

	bash .bin/load_chrome.sh &> /dev/null 2>&1
	# echo 'Chrome started'

	# go to Labs branch for the given group
	cd "${root_dir}/Labs"
	git checkout $group

	# display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi
}

launchProject_ProgressBG-Python-Digitall(){
	### init
	clear
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-Python-Digitall/'
	cd $root_dir

	# `.bin/load_chrome.sh &> /dev/null 2>&1`
	bash .bin/load_chrome.sh &> /dev/null 2>&1
	# echo 'Chrome started'

	# go to Labs branch for the given group by week day number
	cd "${root_dir}/ProgressBG-Python-Digitall-Labs"

	### display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi


	#### start zoom meating
	# xdg-open zoommtg://zoom.us/join?action=join
	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

	#### start countdownTimer:
	# countdownTimer 10
}

launchProject_ProgressBG-Python(){
	### init
	clear
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-Python/'
	cd $root_dir

	# `.bin/load_chrome.sh &> /dev/null 2>&1`
	bash .bin/load_chrome.sh &> /dev/null 2>&1
	# echo 'Chrome started'

	# go to Labs branch for the given group by week day number
	cd "${root_dir}/ProgressBG-Python-Labs"

	### display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi
}

launchProject_ProgressBG-Python-Ind(){
	### init
	clear
	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-Python-Ind/'
	cd $root_dir

	# `.bin/load_chrome.sh &> /dev/null 2>&1`
	bash .bin/load_chrome.sh &> /dev/null 2>&1
	# echo 'Chrome started'


	### display TODO:
	# clear
	todos=$(tail .TODO)

	if [[ ! -z "$todos" ]] ; then
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi
}

# cd /home/nemsys/projects/courses/ProgressBG/ProgressBG-MLAndGenerativeAI
launchProject_ProgressBG-MLAndGenerativeAI(){
	slides_path='/home/nemsys/projects/courses/ProgressBG/ProgressBG-MLAndGenerativeAI/Slides'
	code_path='/home/nemsys/projects/courses/ProgressBG/ProgressBG-MLAndGenerativeAI/Labs/'

	# # go to workspace 1:
	# wmctrl -s 1
	# nemo /home/nemsys/PROGRAMMING_BOOKS/Python/AI/DataScience/MachineLearning &
	# firefox https://www.google.com/ &

	# sleep 2

	# # go to workspace 0:
	# wmctrl -s 0

	cd $slides_path

	bash ../.bin/load_chrome.sh
	echo 'Chrome started'

	# bash .bin/subl_start.sh
	# echo 'sublime text started'

	# get current git branch
	branch_name=$(git symbolic-ref -q HEAD)
	branch_name=${branch_name##refs/heads/}
	branch_name=${branch_name:-HEAD}


	# if [[ $branch_name = "main" ]];then
	# 	bash ../.bin/live-server.sh
	# fi


	# gnome-terminal --window-with-profile=night --working-directory=$code_path -e 'pipenv shell'

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

# cd /home/nemsys/projects/courses/ProgressBG/ProgressBG-MLwithPython/ProgressBG-Python/
launchProject_ProgressBG-MLwithPython(){
	slides_path='/home/nemsys/projects/courses/ProgressBG/ProgressBG-MLwithPython/ProgressBG-MLwithPython-Slides'
	code_path='/home/nemsys/projects/courses/ProgressBG/ProgressBG-MLwithPython/ProgressBG-MLwithPython-Code/'

	# # go to workspace 1:
	# wmctrl -s 1
	# nemo /home/nemsys/PROGRAMMING_BOOKS/Python/AI/DataScience/MachineLearning &
	# firefox https://www.google.com/ &

	# sleep 2

	# # go to workspace 0:
	# wmctrl -s 0

	# Automate ProgressBG-MLwithPython
	cd $slides_path

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


	# gnome-terminal --window-with-profile=night --working-directory=$code_path -e 'pipenv shell'

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


launchProject_ML_SA(){
	# clear

	root_dir='/home/nemsys/projects/courses/netIT/ML_SA'
	echo "@@@@"

	# gnome-terminal --window-with-profile=night --working-directory=$code_path -e 'pipenv shell'

	# # add connda to path:
	# source ./.bin/conda_activate.sh

	# go to workspace 1
	# wmctrl -s 1

	cd $root_dir

	bash .bin/load_chrome.sh > /dev/null 2>&1

	day_name=`date '+%a'`
	hour=`date '+%H'`
	# echo "${day_name}, ${hour}"

	# clear
	# go to Labs branch for the given group by week day number
	cd "${root_dir}/ML_SA_Labs/"

	# display TODO:
	# clear

	if [ -f ".TODO" ]; then
		todos=$(tail .TODO)
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi

	# add connda to path and activate venv:
	#source ../.bin/conda_activate.sh
	#conda activate base

	if [ -f ".venv/bin/activate" ]; then
        source .venv/bin/activate
    else
        echo "Virtual environment not found. Please create it using 'python3 -m venv .venv'."
    fi

	# start zoom meating
	# xdg-open zoommtg://zoom.us/join?action=join
	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

	# start countdownTimer:
	# countdownTimer 10
	# . /home/nemsys/projects/courses/.bin/CountdownTimer/countdownTimer.sh
}

launchProject_PythonCourseNetIT(){
	clear

	root_dir='/home/nemsys/projects/courses/netIT/PythonCourseNetIT'

	# gnome-terminal --window-with-profile=night --working-directory=$code_path -e 'pipenv shell'

	# go to workspace 1
	# wmctrl -s 1

	cd $root_dir
	bash .bin/load_chrome.sh > /dev/null 2>&1

	day_name=`date '+%a'`
	hour=`date '+%H'`
	echo "${day_name}, ${hour}"

	clear
	# go to Labs branch for the given group by week day number

	# if [[ $day_name == "Tue" || $day_name == "Thu" ]];then
	# 	cd "${root_dir}/PythonCourse_15.08.2023-Labs/"
	# elif [[ $day_name == "Mon" || $day_name == "Wed" ]];then
	# 	cd "${root_dir}/PythonCourse_27.02.2023-Labs/"
	# else
	# 	cd "${root_dir}/"
	# fi

	cd "${root_dir}/Labs_28.02.2024/"

	# display TODO:
	clear
	if [ -f ".TODO" ]; then
		todos=$(tail .TODO)
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo -e ${LIGHTBLUE}"${todos}"${NC}
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	fi

	# activate virtenv
	if [ -f ".venv/bin/activate" ]; then
		source .venv/bin/activate
	fi

	# start zoom meating
	# xdg-open zoommtg://zoom.us/join?action=join
	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

	# start countdownTimer:
	# countdownTimer 10
	# . /home/nemsys/projects/courses/.bin/CountdownTimer/countdownTimer.sh
}


# launchProject_ProgressBG-Python-UniCredit(){
# 	clear
# 	root_dir='/home/nemsys/projects/courses/ProgressBG/ProgressBG-Python-UniCredit'

# 	cd $root_dir
# 	bash .bin/load_chrome.sh > /dev/null 2>&1
# 	# echo "Chrome started: $root_dir"

# 	# `.bin/vscode_start.sh`
# 	# echo 'VScode started'


# 	# go to Labs branch for the given group by week day number
# 	cd "${root_dir}/ProgressBG-Python-UniCredit-Labs"

# 	day_name=`date '+%a'`
# 	hour=`date '+%H'`
# 	# echo "${day_name}, ${hour}"

# 	# clear
# 	# if [[ $day_name == "Tue" || $day_name == "Thu" ]]; then
# 	# 	git checkout 16_WD_WD
# 	# fi
# 	# if [[ $day_name == "Sat" || $day_name == "Sun" ]]; then
# 	# 	git checkout 17_WD_WE
# 	# fi

# 	# display TODO:
# 	# clear
# 	todos=$(tail .TODO)

# 	if [[ ! -z "$todos" ]] ; then
# 		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 		echo -e ${LIGHTBLUE}"${todos}"${NC}
# 		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 	fi

# 	# start zoom meating
# 	# xdg-open zoommtg://zoom.us/join?action=join&confno=92667386467&pwd=dVdEdEx4QjhtZDZxNTZvZ2lDa3hVdz09
# 	# xdg-open zoommtg://zoom.us/start?browser=chrome&confno=92667386467&zc=0&stype=1&uname=progressbg.www.courses@gmail.com&uid=ktM_y3H7RsyteCBEerVx6A

# 	# start countdownTimer:
# 	# countdownTimer 10
# }



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

# /home/nemsys/projects/courses/ProgressBG/ProgressBG-VC-Django/
# launchProject_ProgressBG-VC-Django(){
# 	slides_path='/home/nemsys/projects/courses/ProgressBG/ProgressBG-VC-Django/ProgressBG-VC-Django-Slides/'
# 	labs_wd='/home/nemsys/projects/courses/ProgressBG/ProgressBG-VC-Django/ProgressBG-VC-Django-Labs/'

# 	# Load the slides:
# 	cd $slides_path

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
# 	slides_path='/home/nemsys/projects/courses/ProgressBG/ProgressBG-VMware-Python/ProgressBG-VMware-Python-Slides'
# 	labs_wd='/home/nemsys/projects/courses/ProgressBG/ProgressBG-VMware-Python/ProgressBG-VMware-Python-Code'

# 	# Load the slides:
# 	cd $slides_path

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









