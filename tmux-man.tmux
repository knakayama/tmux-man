#!/usr/bin/env bash

get_tmux_option() {
  local option="$1"
  local default_value="$2"
  local option_value=$(tmux show-option -gqv "$option")

  if [[ -z $option_value ]]; then
    echo "$default_value"
  else
    echo "$option_value"
  fi
}

readonly man_key="$(get_tmux_option "@man-key" "m")"
readonly man_len="$(get_tmux_option "@man-len" "10")"

tmux bind-key "$man_key" \
  command-prompt -p "Enter command:" "set-environment -g TMUX_MAN %%" \\\; \
  split-window -l $man_len "man $(tmux show-environment -g TMUX_MAN | cut -d= -f2)"

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=sh sw=2 ts=2 et
