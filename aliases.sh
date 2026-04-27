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
alias ai-ml='source ~/.venvs/ai-ml/bin/activate'
# alias jn='nohup jupyter notebook &'


# --------------------------------- calendar --------------------------------- #
alias ncal="ncal -Mb"
alias cal="ncal -Mb"

# ----------------------------------- git: ----------------------------------- #
alias ggs='git status'
alias ggl='git log --oneline --graph'

# sort by comitter date (ASC) and show:
alias git_branch_sort_committerdate="git branch --sort=committerdate --format='%(committerdate:short) %(refname:short)'"


# ----------------------------------- IDEs: ----------------------------------- #
alias code-nemsys='code --user-data-dir ~/.vscode-nemsys'
# alias code-work='code --user-data-dir ~/.vscode-work'

# Antigravity Profile for progressbg.ml.course (Custom)
alias ag-progressbg.ml.course='HOME="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/app_config" antigravity --user-data-dir="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/browser_profile"'

# Antigravity Profile for phoneiep (Custom)
alias ag-phoneiep='HOME="/home/nemsys/Antigravity_Profiles/phoneiep/app_config" antigravity --user-data-dir="/home/nemsys/Antigravity_Profiles/phoneiep/browser_profile"'

# XCURSOR_THEME="LyraB-cursors" XCURSOR_PATH="/home/nemsys/.icons:/usr/share/icons" HOME="/home/nemsys/Antigravity_Profiles/phoneiep/app_config" antigravity --user-data-dir="/home/nemsys/Antigravity_Profiles/phoneiep/browser_profile"

# ---------------------------------- battery --------------------------------- #
alias bat-desk='sudo tlp setcharge 40 50'
alias bat-travel='sudo tlp setcharge 75 80'
alias bat-full='sudo tlp fullcharge'

# ---------------------------------- docker ---------------------------------- #
alias docker-stop-all='docker stop $(docker ps -q)'

# ---------------------------------- misc --------------------------------- #
alias get_my_public_ip='dig +short txt ch whoami.cloudflare @1.1.1.1'
# Fix Ghostty/Kitty keyboard protocol being left on by CLI tools (e.g. Claude Code)
alias fix-kb='printf "\033[>0u"'