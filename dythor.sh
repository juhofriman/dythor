#! /bin/bash

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

usage () {
  echo "usage: dythor ACTION "
  echo

  for SUB_CMD in "${SUB_CMDS[@]}"; do
    describe_$SUB_CMD
  done
}

ACTION=$1

if [ -z $ACTION ] ; then
  usage
else
  execute_$ACTION "${@:2}"
fi