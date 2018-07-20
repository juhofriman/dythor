#! /bin/bash

describe_list() {
  echo -e "list \t List available python versions"
}

help_list() {
  echo "usage: dythor list [<filter>]"
  echo
  echo "Lists available docker images for python in dockerhub."
  echo
}

function fetch_tags {
  wget -q https://registry.hub.docker.com/v1/repositories/python/tags -O - |\
    sed -e 's/[][]//g' -e 's/"//g' -e 's/ //g' |\
    tr '}' '\n' |\
    awk -F: '{print $3}'
}

execute_list() {
  FILTER=$1
  if [ -z $FILTER ]; then
    fetch_tags
  else
    fetch_tags | grep $FILTER
  fi
}