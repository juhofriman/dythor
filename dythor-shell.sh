#! /bin/bash

describe_shell() {
  echo -e "\tshell \t\t Open shell to environment"
}

help_shell() {
  echo "usage: dythor shell <TAG> [<SHELL>]"
  echo
  echo "Opens shell to python environment. For now, this is basically the way to use pip and such."
  echo "All images do not contain same shells, so for now, you need to define sh as a shell for lightweight alpine images."
  echo
  echo "Arguments:"
  echo -e "\tTAG\tdocker tag for container. Find proper value from list-remote."
  echo -e "\tSHELL\tUsed shell, defaults to bash."
  echo
  echo "Examples:"
  echo -e "\tdythor shell 3.7 (open bash shell to 3.7)"
  echo -e "\tdythor shell 3.7 sh (open sh shell to 3.7)"
  echo -e "\tdythor shell 3.7-alpine sh (open sh shell to 3.7 alpine based image, using bash returns ugly error)"
}

execute_shell() {
  TAG=$1
  SHELL=${2:-bash}
  docker run -it -v "$USER_DIR":/opt/dythor -w /opt/dythor python:$TAG $SHELL
}