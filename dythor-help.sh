#! /bin/bash

describe_help() {
  echo -e "help \t Show help"
}

help_help() {
  echo "░░░░▄▄▄▄▀▀▀▀▀▀▀▀▄▄▄▄▄▄"
  echo "░░░░█░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░▀▀▄"
  echo "░░░█░░░▒▒▒▒▒▒░░░░░░░░▒▒▒░░█"
  echo "░░█░░░░░░▄██▀▄▄░░░░░▄▄▄░░░█"
  echo "░▀▒▄▄▄▒░█▀▀▀▀▄▄█░░░██▄▄█░░░█"
  echo "█▒█▒▄░▀▄▄▄▀░░░░░░░░█░░░▒▒▒▒▒█"
  echo "█▒█░█▀▄▄░░░░░█▀░░░░▀▄░░▄▀▀▀▄▒█"
  echo "░█▀▄░█▄░█▀▄▄░▀░▀▀░▄▄▀░░░░█░░█"
  echo "░░█░░▀▄▀█▄▄░█▀▀▀▄▄▄▄▀▀█▀██░█"
  echo "░░░█░░██░░▀█▄▄▄█▄▄█▄████░█"
  echo "░░░░█░░░▀▀▄░█░░░█░███████░█"
  echo "░░░░░▀▄░░░▀▀▄▄▄█▄█▄█▄█▄▀░░█"
  echo "░░░░░░░▀▄▄░▒▒▒▒░░░░░░░░░░█"
  echo "░░░░░░░░░░▀▀▄▄░▒▒▒▒▒▒▒▒▒▒░█"
  echo "░░░░░░░░░░░░░░▀▄▄▄▄▄░░░░░█"
  echo
  echo "YO DAWG, I head you like to help while you help"
}

function common_dythor_help {
  echo "usage: help [SUB_COMMAND]"
  echo "Gets common dythor help (this one), or help for SUB_COMMAND"
  echo
  echo "Dythor (weird concatenation of docker and python) is a docker wrapper for running different python environments easily."
  echo "Dythor exists primarily because python setup in OS X is just horrible."
}

execute_help() {
  SUB_CMD=$1
  if [ -z $SUB_CMD ]; then
    common_dythor_help
  else
    help_$1
  fi
}