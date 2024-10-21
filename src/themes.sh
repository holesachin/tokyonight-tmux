#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"

case $SELECTED_THEME in
  "storm")
    declare -A THEME=(
    ["background"]="#24283b"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#a9b1d6"
    ["yellow"]="#e0af68"

    ["bblack"]="#414868"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#f7768e"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;

"day")
  declare -A THEME=(
  ["background"]="#d5d6db"
  ["foreground"]="#343b58"
  ["black"]="#0f0f14"
  ["blue"]="#34548a"
  ["cyan"]="#0f4b6e"
  ["green"]="#33635c"
  ["magenta"]="#5a4a78"
  ["red"]="#8c4351"
  ["white"]="#343b58"
  ["yellow"]="#8f5e15"

  ["bblack"]="#9699a3"
  ["bblue"]="#34548a"
  ["bcyan"]="#0f4b6e"
  ["bgreen"]="#33635c"
  ["bmagenta"]="#5a4a78"
  ["bred"]="#8c4351"
  ["bwhite"]="#343b58"
  ["byellow"]="#8f5815"
)
;;

"gruvbox")
  declare -A THEME=(
  ["background"]="#282828"  # Dark Background
  ["foreground"]="#ebdbb2"  # Light Foreground (Text)

  ["black"]="#1d2021"       # Dark 0 (Black)
  ["red"]="#cc241d"         # Red
  ["green"]="#98971a"       # Green
  ["yellow"]="#d79921"      # Yellow
  ["blue"]="#458588"        # Blue
  ["magenta"]="#b16286"     # Purple/Magenta
  ["cyan"]="#689d6a"        # Aqua/Cyan
  ["white"]="#a89984"       # Light 4 (Gray)

  ["bblack"]="#928374"      # Light 3 (Bright Black / Gray)
  ["bred"]="#fb4934"        # Bright Red
  ["bgreen"]="#b8bb26"      # Bright Green
  ["byellow"]="#fabd2f"     # Bright Yellow
  ["bblue"]="#83a598"       # Bright Blue
  ["bmagenta"]="#d3869b"    # Bright Magenta
  ["bcyan"]="#8ec07c"       # Bright Aqua
  ["bwhite"]="#ebdbb2"      # Light 1 (Bright White)
)
;;

"gruvbox-baby")
  declare -A THEME=(
    ["background"]="#282828"        # Background
    ["foreground"]="#ebdbb2"        # Foreground (Text)

    ["black"]="#0d0e0f"             # Dark0 (Deep Black)
    ["red"]="#cc241d"               # Error Red
    ["green"]="#98971a"             # Soft Green
    ["yellow"]="#eebd35"            # Soft Yellow
    ["blue"]="#458588"              # Blue-Gray
    ["magenta"]="#b16286"           # Magenta
    ["cyan"]="#689d6a"              # Forest Green (Aqua)
    ["white"]="#DEDEDE"             # Light Gray

    ["bblack"]="#504945"            # Medium Gray
    ["bred"]="#fb4934"              # Bright Red
    ["bgreen"]="#8ec07c"            # Clean Green
    ["byellow"]="#fabd2f"           # Bright Yellow
    ["bblue"]="#7fa2ac"             # Light Blue
    ["bmagenta"]="#D4879C"          # Pink
    ["bcyan"]="#83a598"             # Dark Gray (Bright Cyan)
    ["bwhite"]="#E7D7AD"            # Milk (Bright White)
  )
  ;;

*)
  # Default to night theme
  declare -A THEME=(
  ["background"]="#1A1B26"
  ["foreground"]="#a9b1d6"
  ["black"]="#414868"
  ["blue"]="#7aa2f7"
  ["cyan"]="#7dcfff"
  ["green"]="#73daca"
  ["magenta"]="#bb9af7"
  ["red"]="#f7768e"
  ["white"]="#c0caf5"
  ["yellow"]="#e0af68"

  ["bblack"]="#2A2F41"
  ["bblue"]="#7aa2f7"
  ["bcyan"]="#7dcfff"
  ["bgreen"]="#41a6b5"
  ["bmagenta"]="#bb9af7"
  ["bred"]="#ff9e64"
  ["bwhite"]="#787c99"
  ["byellow"]="#e0af68"
)
;;
esac

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
