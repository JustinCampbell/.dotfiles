#!/bin/bash

cyan=`tput setaf 6`
red=`tput setaf 1`
dark_gray=`tput setaf 241`
reset=`tput sgr0`

contains() {
  local list=$#
  local value=${!list}

  for ((i=1; i<$#; i++)) {
    if [ "${!i}" == "${value}" ]; then
      return 0
    fi
  }

  return 1
}

generate_random_color() {
  random_color="0"
  blacklist=("0" "8" "16" "17" "18" "59")

  until $(! contains "${blacklist[@]}" "$random_color"); do
    random_color=$(jot -r 1 1 230)
  done

  echo $random_color
}

random_color() {
  echo -n `tput setaf $(generate_random_color)`
}

prompt_command() {
  [[ -d .git ]] &&
  [[ `history 1` != *'git status'* ]] &&
  echo -n ${dark_gray} &&
  git status --branch --short --untracked=normal

  set_ps1
}

set_ps1() {
  PS1='\[\033]0;\W\]\[${red}\]${?##0} \[${cyan}\]\W\[$(random_color)\]$ \[${reset}\]'
}

set_ps1

PROMPT_COMMAND='prompt_command'
