#!/bin/bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Antigravity related aliases and functions                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Antigravity Profile for progressbg.ml.course (Custom)
alias ag-progressbg.ml.course='HOME="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/app_config" antigravity --user-data-dir="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/browser_profile"'

# Antigravity Profile for phoneiep (Custom)
alias ag-phoneiep='HOME="/home/nemsys/Antigravity_Profiles/phoneiep/app_config" antigravity --user-data-dir="/home/nemsys/Antigravity_Profiles/phoneiep/browser_profile"'

# Antigravity Profile for phoneiep with remote debugging enabled (to capture all model interactions)
alias ag-phoneiep-log='HOME="/home/nemsys/Antigravity_Profiles/phoneiep/app_config" \
     antigravity \
     --user-data-dir="/home/nemsys/Antigravity_Profiles/phoneiep/browser_profile" \
     --remote-debugging-port=9222'

# tmux helper — opens split pane with Antigravity + logger side by side
ag-log() {
    local profile="${1:?usage: ag-log <profile> <project_dir> <task>}"
    local project="${2:?usage: ag-log <profile> <project_dir> <task>}"
    local task="${3:-session}"
    local session="ag-${profile}-${task}"

    # Check if session already exists to avoid errors
    if tmux has-session -t "$session" 2>/dev/null; then
        tmux attach-session -t "$session"
        return
    fi

    # Create session and first pane
    tmux new-session -d -s "$session" -x 220 -y 50
    tmux send-keys -t "$session:0.0" "ag-${profile}-log $project" Enter

    # Split and run the logger in the second pane
    tmux split-window -h -t "$session:0.0"
    tmux send-keys -t "$session:0.1" "cd $project && uv run ag-logger.py --task $task" Enter

    # Attach
    tmux attach-session -t "$session"
}
