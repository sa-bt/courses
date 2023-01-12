#! /bin/bash

# Tasks File
file=tasks.csv

# Add Task to Tasks File
function _add {
  # Task Title Should be in " " because of some Special Characters CSV
  echo "0,$1,\"$2\"" >>"$file"
  echo "Task '$2' Added to List."
}
function _list {
  number=1
  cat "$file" | awk -F, '{print $1" | "$2" | "$3}' | while read line; do
    pretty_line=$(printf "%d | %s" "$number" "$line")
    echo "$pretty_line"
    number=$((number + 1))
  done
}
function clear {
  >$file
}

case $1 in
"add")
  while [ -n "$2" ]; do
    case "$2" in
    -t | --title)
      if [ -z "$3" ]; then
        echo "Option -t|--title Needs a Parameter"
        exit
      fi
      name="$3"
      shift
      shift
      ;;

    -p | --priority)
      priority=$3
      if [[ $priority != 'L' && $priority != 'M' && $priority != 'H' ]]; then
        echo "Option -p|--priority Only Accept L|M|H"
        exit
      fi
      shift
      shift
      ;;

    *)
      echo "Invalid Option"
      exit
      ;;
    esac
  done
  # Default Task Priority
  if [[ -z "$priority" ]]; then
    priority="L"
  fi
  _add "$priority" "$name"
  ;;
"clear")
  clear
  ;;
"list")
  _list
  ;;
  "find")

  ;;
*)
  echo "Command Not Supported!"
  ;;
esac
