#!/bin/bash

if [ -z "$1" ]
then
    echo "Usage: $0 [filename]"
    exit 0
fi

photo=$1

echo "Creating 2880 jpg..."
magick $1 -resize 2880 ${photo/.jpg/_2880.jpg}

echo "Creating 1280 jpg..."
magick $1 -resize 1280 ${photo/.jpg/_1280.jpg}

echo "Creating 640 jpg..."
magick $1 -resize 640 ${photo/.jpg/_640.jpg}

echo "Creating 2880 webp..."
magick ${photo/.jpg/_2880.jpg} -quality 50 ${photo/.jpg/_2880.webp}
echo "Creating 2880 avif..."
magick ${photo/.jpg/_2880.jpg} ${photo/.jpg/_2880.avif}

echo "Creating 1280 webp..."
magick ${photo/.jpg/_1280.jpg} -quality 50 ${photo/.jpg/_1280.webp}
echo "Creating 1280 avif..."
magick ${photo/.jpg/_1280.jpg} ${photo/.jpg/_1280.avif}

echo "Creating 640 webp..."
magick ${photo/.jpg/_640.jpg} -quality 50 ${photo/.jpg/_640.webp}
echo "Creating 1280 avif..."
magick ${photo/.jpg/_640.jpg} ${photo/.jpg/_640.avif}
