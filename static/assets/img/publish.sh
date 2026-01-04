#!/usr/bin/env bash

set -e

if [ -z "$1" ]
then
    echo "Usage: $0 [filename_prefix]"
    exit 0
fi

prefix=$1

for file in $(find . -name "$prefix*" ); do
    echo "Uploading ${file:2}";
    b2 file upload maxcrone-org $file img/${file:2};
done
