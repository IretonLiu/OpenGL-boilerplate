#!/bin/bash

while getopts 'c:' OPTION; do
  case "$OPTION" in
    c)
      rm -rf build
      ;;
  esac
done
shift "$(($OPTIND -1))"

cmake -B build

( cd build ; make )

( cd bin ; ./Boilerplate)