#!/bin/bash
#
# ~/.bash_profile
#
# Bash interactive shell configuration.

# Sources files that actually exist
sourcer() {
  # shellcheck disable=SC1090
  [ -r "$1" ] && [ -f "$1" ] && source "$1"
}

# Include user bashrc
sourcer ~/.bashrc

# Turn on parallel history
shopt -s histappend
PROMPT_COMMAND="history -a"
HISTSIZE=1000
HISTFILESIZE=100000
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE='exit'

# Do not bell on tab-completion
set bell-style none

# Completed names which are symbolic links to
# directories have a slash appended.
set mark-symlinked-directories on

# Ask before rm *
set rmstar

# Include aliases
sourcer ~/.bash_aliases

# Setup shell prompt
sourcer ~/.bash_prompt
