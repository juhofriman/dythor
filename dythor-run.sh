#! /bin/bash

describe_run() {
  echo -e "\trun \t\t Run python environment"
}

help_run() {
  echo "usage: dythor run <TAG> [<ARGS>]"
  echo
  echo "Run python command in container. ARGS are passed directly to python command in container."
  echo
  echo "Arguments:"
  echo -e "\tTAG\tdocker tag for container. Find proper value from list-remote."
  echo -e "\tARGS\tArguments passed to python."
  echo
  echo "Examples:"
  echo -e "\t dythor run 3.7 (Opens python REPL)"
  echo -e "\t dythor run 3.7 my-script.py (Evaluates my-script.py)"
  echo -e "\t dythor run 3.7 --help (Shows python help)"
}

execute_run() {
  TAG=$1
  docker run -it -v "$USER_DIR":/opt/dythor -w /opt/dythor python:$TAG python "${@:2}"
}