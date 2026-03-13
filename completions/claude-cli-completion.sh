# ========================================
# Claude CLI Completion (Dynamic)
# Auto-updates from `claude --help` output
# ========================================

_claude_get_flags_cache() {
  local cache_file="$HOME/.cache/claude-completion-flags.txt"
  local cache_age_seconds=$((24 * 60 * 60))  # 24 hours
  
  mkdir -p "$HOME/.cache"
  
  # Check if cache exists and is fresh
  if [[ -f "$cache_file" ]]; then
    local file_age=$(( $(date +%s) - $(stat -f%m "$cache_file" 2>/dev/null || stat -c%Y "$cache_file" 2>/dev/null) ))
    if [[ $file_age -lt $cache_age_seconds ]]; then
      cat "$cache_file"
      return 0
    fi
  fi
  
  # Generate fresh cache from `claude --help`
  if command -v claude &>/dev/null; then
    claude --help 2>/dev/null | grep -oE '^\s*(-(-[a-z0-9-]+|[a-z]))( |,)' | sed 's/^\s*//;s/[, ].*$//' | sort -u | tee "$cache_file"
  else
    # Fallback if claude not found
    echo "claude command not found"
  fi
}

_claude_bash_completion()
{
  local cur prev
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"

  # Complete flags
  if [[ "$cur" == -* ]]; then
    local flags
    flags=$(_claude_get_flags_cache)
    mapfile -t COMPREPLY < <(compgen -W "$flags" -- "$cur")
  fi

  return 0
}

complete -F _claude_bash_completion claude
