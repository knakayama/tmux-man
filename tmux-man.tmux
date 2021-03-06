#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "${CURRENT_DIR}/scripts/helpers.sh"

readonly man_key="$(get_tmux_option "@man-key" "m")"
readonly man_len="$(get_tmux_option "@man-len" "10")"

tmux bind-key "$man_key" \
  command-prompt -p "Enter command:" \
  "run-shell '${CURRENT_DIR}/scripts/man.sh %%'"

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=sh sw=2 ts=2 et
