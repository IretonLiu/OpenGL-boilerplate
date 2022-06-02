#!/bin/bash

while getopts 'cr:' OPTION; do
  case "$OPTION" in
    c)
      rm -rf build
			( cd build ; make )
      ;;
  esac
done
shift "$(($OPTIND -1))"

cmake -B build

( cd build ; make )

( cd bin ; ./Boilerplate)