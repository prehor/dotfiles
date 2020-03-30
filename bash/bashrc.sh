#!/bin/bash
#
# ~/.bashrc
#
# Configuration for bash, sources a lot of other files

# Sources files that actually exist
sourcer() {
  # shellcheck disable=SC1090
  [[ -r "$1" ]] && [[ -f "$1" ]] && source "$1"
}

# Include system-wide bashrc
sourcer /etc/bashrc

# Export path
export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Set umask
umask 022

# Dynamic window resizing
shopt -s checkwinsize

# Handle 8-bit in readline
set convert-meta off
set input-meta on
set meta-flag on
set output-meta on

# Colorize less
case "$TERM" in
xterm|xterm-256color)
  # red="$(printf "\033[0;31m")"
  # green="$(printf "\033[0;32m")"
  # yellow="$(printf "\033[0;33m")"
  blue="$(printf "\033[0;34m")"
  # magenta="$(printf "\033[0;35m")"
  # cyan="$(printf "\033[0;36m")"
  # white="$(printf "\033[0;37m")"

  boldred="$(printf "\033[1;31m")"
  boldgreen="$(printf "\033[1;32m")"
  # boldyellow="$(printf "\033[1;33m")"
  # boldblue="$(printf "\033[1;34m")"
  # boldmagenta="$(printf "\033[1;35m")"
  boldcyan="$(printf "\033[1;36m")"
  # boldwhite="$(printf "\033[1;37m")"

  end="$(printf "\033[0m")"

  # Enter blinking mode
  LESS_TERMCAP_mb="${boldred}"
  export LESS_TERMCAP_mb
  # Enter double-bright mode
  LESS_TERMCAP_md="${boldgreen}"
  export LESS_TERMCAP_md
  # Enter standout mode
  LESS_TERMCAP_so="${blue}"
  export LESS_TERMCAP_so
  # Enter underline mode
  LESS_TERMCAP_us="${boldcyan}"
  export LESS_TERMCAP_us
  # Leave standout mode
  LESS_TERMCAP_se="${end}"
  export LESS_TERMCAP_se
  # Leave underline mode
  LESS_TERMCAP_ue="${end}"
  export LESS_TERMCAP_ue
  # Turn off all appearance modes (mb, md, so, us)
  LESS_TERMCAP_me="${end}"
  export LESS_TERMCAP_me

  # Uset colors
  unset red green yellow blue magenta cyan yellow white
  unset boldred boldgreen boldyellow boldblue boldmagenta boldcyan boldwhite
  unset end
  ;;
esac

# Export editor and pager
export EDITOR=vi
export PAGER=less
