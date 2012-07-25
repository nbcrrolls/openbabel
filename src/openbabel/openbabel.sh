#!/bin/bash
# wrapper script for openbabel web service

flags=""

while [ "$1" != "" ]; do
    case $1 in
        --gen3d)               
             flags="$flags --gen3d"
             ;;
        -d)               
             flags="$flags -d"
             ;;
        -h)               
             flags="$flags -h"
             ;;
        -p)               
             flags="$flags -p"
             ;;
        -c)               
             flags="$flags -c"
             ;;
        -x)               
             shift
             flags="$flags $1"
             ;;
        -ifile)
             shift
             ifile=$1
             ;;
        -iformat)
             shift
             iformat=$1
             ;;
        -ofile)
             shift
             ofile=$1
             ;;
        -oformat)
             shift
             oformat=$1
             ;;
        *)   echo "Invalid $1 argument in $@"
             exit 1
    esac
    shift
done

if test -z "$ifile"; then
  echo "ERROR: missing input file"
  exit 1
fi

if test  -z "$ofile"; then
  ofile="output"
fi

cmd="/opt/openbabel/bin/babel $iformat $ifile $oformat $ofile $flags"

echo "Executing command: $cmd"
$cmd
