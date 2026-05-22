#!/bin/bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Antigravity related aliases and functions                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Antigravity Profile for progressbg.ml.course (Custom)
alias ag-progressbg.ml.course='HOME="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/app_config" antigravity --user-data-dir="/home/nemsys/Antigravity_Profiles/progressbg.ml.course/browser_profile"'

# Antigravity Profile for phoneiep (Custom)
alias ag-phoneiep='HOME="/home/nemsys/Antigravity_Profiles/phoneiep/app_config" antigravity \
  --user-data-dir="/home/nemsys/Antigravity_Profiles/phoneiep/browser_profile" \
  --extensions-dir="/home/nemsys/Antigravity_Profiles/phoneiep/app_config/.antigravity/extensions"'

# Antigravity Profile for phoneiep with remote debugging enabled
alias ag-phoneiep-log='HOME="/home/nemsys/Antigravity_Profiles/phoneiep/app_config" antigravity \
  --user-data-dir="/home/nemsys/Antigravity_Profiles/phoneiep/browser_profile" \
  --extensions-dir="/home/nemsys/Antigravity_Profiles/phoneiep/app_config/.antigravity/extensions" \
  --remote-debugging-port=9222'