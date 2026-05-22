#!/bin/bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Antigravity 2.0 related aliases and functions                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Profile for progressbg.ml.course (Custom)
ag-progressbg.ml.course() {
    export ANTIGRAVITY_CONFIG_DIR="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/app_config"
    antigravity-ide "$@"
}

# Profile for phoneiep (Custom)
ag-phoneiep() {
    export ANTIGRAVITY_CONFIG_DIR="/home/nemsys/Antigravity_Profiles/phoneiep/app_config"
    antigravity-ide "$@"
}

# Profile for phoneiep with remote debugging enabled
ag-phoneiep-log() {
    export ANTIGRAVITY_CONFIG_DIR="/home/nemsys/Antigravity_Profiles/phoneiep/app_config"
    # 2.0 passes debugging flags directly through to the underlying electron framework
    antigravity-ide --remote-debugging-port=9222 "$@"
}