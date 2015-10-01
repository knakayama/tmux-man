#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "${CURRENT_DIR}/helpers.sh"

if [[ "$2" == "" ]]; then
  set -- m $1
fi

readonly _cmd="$1"
shift
declare -A cmd_map

cmd_map["m"]="man"
cmd_map["a"]="ansible-doc"
cmd_map["r"]="rfc"
cmd_map["h"]="httpdoc"

readonly man_len="$(get_tmux_option "@man-len" "10")"

if cmd_exists "${cmd_map["$_cmd"]}"; then
  tmux split-window -l $man_len "${cmd_map["$_cmd"]} $@ | less -R"
else
  display_msg "${cmd_map["$_cmd"]} not found in your PATH."
fi

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=sh sw=2 ts=2 et
