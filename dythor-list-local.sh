#! /bin/bash

describe_list-local() {
  echo -e "\tlist-local \t List python versions locally available (i.e runs without fetch)"
}

help_list-local() {
  echo "usage: dythor list-local"
  echo
  echo "Lists all python images locally. No filters."
  echo
}

execute_list-local() {
  docker image ls | grep python
}