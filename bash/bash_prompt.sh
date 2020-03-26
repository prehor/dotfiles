#!/bin/bash
#
# ~/.bashrc
#
# A subset of the bashrc configuration for setting bash prompt.

# Colorize shell prompt
case "${TERM}" in
xterm|xterm-256color)
  red="$(printf "\033[0;31m")"
  red="\[${red}\]"
  # green="$(printf "\033[0;32m")"
  # green="\[${green}\]"
  yellow="$(printf "\033[0;33m")"
  yellow="\[${yellow}\]"
  blue="$(printf "\033[0;34m")"
  blue="\[${blue}\]"
  # magenta="$(printf "\033[0;35m")"
  # magenta="\[${magenta}\]"
  # cyan="$(printf "\033[0;36m")"
  # cyan="\[${cyan}\]"
  # white="$(printf "\033[0;37m")"
  # white="\[${white}\]"

  # boldred="$(printf "\033[1;31m")"
  # boldred="\[${boldred}\]"
  # boldgreen="$(printf "\033[1;32m")"
  # boldgreen="\[${boldgreen}\]"
  # boldyellow="$(printf "\033[1;33m")"
  # boldyellow="\[${boldyellow}\]"
  # boldblue="$(printf "\033[1;34m")"
  # boldblue="\[${boldblue}\]"
  # boldmagenta="$(printf "\033[1;35m")"
  # boldmagenta="\[${boldmagenta}\]"
  # boldcyan="$(printf "\033[1;36m")"
  # boldcyan="\[${boldcyan}\]"
  # boldwhite="$(printf "\033[1;37m")"
  # boldwhite="\[${boldwhite}\]"

  end="$(printf "\033[0m")"
  end="\[${end}\]"
  ;;
*)
  # Black & White
  unset red green yellow blue magenta cyan yellow white
  unset boldred boldgreen boldyellow boldblue boldmagenta boldcyan boldwhite
  unset end
  ;;
esac

# Set prompt
export PS1="${blue}\u@\h${red}:${yellow}\w${red}\\\$${end} "

# Uset colors
unset red green yellow blue magenta cyan yellow white
unset boldred boldgreen boldyellow boldblue boldmagenta boldcyan boldwhite
unset end
