#!/bin/bash

# Use First Argument As Working Directory
WDIR="$1"
cd "$WDIR"

TFILE="file1.txt"

if [ "$#" -eq 3 ] ; then
    TFILE="$3"
elif [ "$#" -ge 4 ] ; then
    for i in "${@:4}"
    do
	echo $i
    done > excess.txt
fi

if [ "$2" -eq 1 ] ; then
    if [ ! -e "./${TFILE}" ]
    then
        echo "$USER" > "./${TFILE}"
    fi
elif [ "$2" -eq 2 ] ; then
    if [ -e "./${TFILE}" ]
    then
	if [ ! -d "./backup" ]
	then
	    mkdir backup
	fi
	cp "./${TFILE}" "./backup/${TFILE}"
    fi
elif [ "$2" -eq 3 ] ; then
    if [ -e "./backup/${TFILE}" ]
    then
	cp "./backup/${TFILE}" "./${TFILE}"
	rm "./backup/${TFILE}"
    fi
fi

echo "Finished"
