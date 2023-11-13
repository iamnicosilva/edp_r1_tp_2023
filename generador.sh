#!/bin/bash

GENERADOR_RANDOM=$((RANDOM % 3))

echo $GENERADOR_RANDOM

GENERADOR_0='base64 /dev/urandom | head -c 500 > file'
GENERADOR_1='ffmpeg -f lavfi -i "anoisesrc=a=0.1:c=white:duration=5" file.wav'
GENERADOR_2='convert -size 100x100 xc: +noise Random file.png'
RANDOM_EJECUTABLE="GENERADOR_$GENERADOR_RANDOM"

eval ${!RANDOM_EJECUTABLE}

#base64 /dev/urandom | head -c 500 > file

#hash=$(md5sum ./file | awk '{print $1}')

#mv file $hash
