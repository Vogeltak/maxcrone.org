#!/bin/bash

if [ -z "$1" ]
then
    echo "Usage: $0 [filename]"
    exit 0
fi

photo=$1

echo "Creating 2880 jpg..."
convert $1 -resize 2880 ${photo/.jpg/_2880.jpg}

echo "Creating 1280 jpg..."
convert $1 -resize 1280 ${photo/.jpg/_1280.jpg}

echo "Creating 640 jpg..."
convert $1 -resize 640 ${photo/.jpg/_640.jpg}

echo "Creating 2880 webp..."
cwebp ${photo/.jpg/_2880.jpg} -o ${photo/.jpg/_2880.webp}

echo "Creating 1280 webp..."
cwebp ${photo/.jpg/_1280.jpg} -o ${photo/.jpg/_1280.webp}

echo "Creating 640 webp..."
cwebp ${photo/.jpg/_640.jpg} -o ${photo/.jpg/_640.webp}
