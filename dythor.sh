#! /bin/bash

USER_DIR=$PWD

cd "$(dirname "$0")"

SUB_CMDS=()

for SUB_CMD in dythor-*.sh; do
    # Process $i
    source $SUB_CMD
    if [[ $SUB_CMD =~ dythor-(.+).sh ]]; then
      SUB_CMDS=(${SUB_CMDS[@]} ${BASH_REMATCH[1]})
    else
      echo "No match for $SUB_CMD"
    fi
done

function usage {
  echo "usage: dythor <command> "
  echo
  echo "Commands:"
  echo
  for SUB_CMD in "${SUB_CMDS[@]}"; do
    describe_$SUB_CMD
  done
  echo
}

ACTION=$1

if [ -z $ACTION ] ; then
  usage
else
  execute_$ACTION "${@:2}"
  if [ $? != 0 ]; then
    echo "No such command $ACTION"
    $?
  fi
fi