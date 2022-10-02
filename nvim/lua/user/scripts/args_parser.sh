#!/bin/sh

# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

# Initialize our own variables:
output_file=""
verbose=0

while getopts "qwertzuiopasdfghjklyxcvbnm" opt; do
  case "$opt" in
    *)  echo $opt
      ;;
  esac
done
