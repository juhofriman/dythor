#! /bin/bash

describe_shell() {
  echo -e "\tshell \t\t Open shell to environment"
}

help_shell() {
  echo "usage: dythor shell <TAG>"
  echo
  echo "Opens shell to python environment. For now, this is basically the way to use pip and such."
  echo
  echo "Arguments:"
  echo -e "\t TAG docker tag for container. Find proper value from list-remote."
  echo
}

execute_shell() {
  TAG=$1
  docker run -it -v "$USER_DIR":/opt/dythor -w /opt/dythor python:$TAG bash
}