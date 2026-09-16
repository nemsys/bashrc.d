#!/bin/bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Antigravity IDE 2.x related aliases and functions                  #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Antigravity IDE Profile for progressbg.ml.course (Custom)
alias ag-progressbg.ml.course='HOME="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/app_config" antigravity-ide \
  --user-data-dir="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/browser_profile" \
  --extensions-dir="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/app_config/.antigravity-ide/extensions"'

# Antigravity IDE Profile for phoneiep (Custom)
alias ag-phoneiep='HOME="/home/nemsys/Antigravity_Profiles/phoneiep/app_config" antigravity-ide \
  --user-data-dir="/home/nemsys/Antigravity_Profiles/phoneiep/browser_profile" \
  --extensions-dir="/home/nemsys/Antigravity_Profiles/phoneiep/app_config/.antigravity-ide/extensions"'

# Antigravity IDE Profile for phoneiep with remote debugging enabled (CDP for Antigravity Scribe)
alias ag-phoneiep-log='HOME="/home/nemsys/Antigravity_Profiles/phoneiep/app_config" antigravity-ide \
  --user-data-dir="/home/nemsys/Antigravity_Profiles/phoneiep/browser_profile" \
  --extensions-dir="/home/nemsys/Antigravity_Profiles/phoneiep/app_config/.antigravity-ide/extensions" \
  --remote-debugging-port=9222'