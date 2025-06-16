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

# ---------------------------------- python ---------------------------------- #
# alias python='/usr/bin/python3.8'
# alias qtdesigner='pyqt5-tools designer'
alias ave='deactivate &> /dev/null; source ./.venv/bin/activate'
alias dve='deactivate'
# alias jn='nohup jupyter notebook &'


# --------------------------------- calendar --------------------------------- #
alias ncal="ncal -Mb"
alias cal="ncal -Mb"

# ----------------------------------- git: ----------------------------------- #
alias ggs='git status'
alias ggl='git log --oneline --graph'

# sort by comitter date (ASC) and show:
alias git_branch_sort_committerdate="git branch --sort=committerdate --format='%(committerdate:short) %(refname:short)'"


# ----------------------------------- VSCode: ----------------------------------- #
alias code-nemsys='code --user-data-dir ~/.vscode-nemsys'
# alias code-work='code --user-data-dir ~/.vscode-work'



