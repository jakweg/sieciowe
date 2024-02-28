#!/bin/bash

set -e

if [[ "$#" -lt 1 ]]; then
    echo 'Expected one argument eg. lab1'
    exit 1
fi
lab_folder=$1
shift

if [[ "$#" -ge 1 ]]; then
    if [[ "$1" != '--' ]]; then
        echo 'Second argument must be --'
        exit 1
    fi
    shift
fi

if [[ ! -d "$lab_folder" ]]; then
    echo 'Arguemnt must point to the folder'
    exit 1
fi

if [[ ! -f "$lab_folder/main.c" ]]; then
    echo 'Arguemnt must point to the folder with main.c file in it'
    exit 1
fi

mkdir -p "/tmp/build/$lab_folder"
gcc -Wall -Wextra "$lab_folder/main.c" -o "/tmp/build/$lab_folder/output" 
/tmp/build/$lab_folder/output $@