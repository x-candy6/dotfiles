#!/bin/bash

echo Enter directory name(within static/):
read dirname

#Copy the current dir images to the specified dir without beginning /'s
#cp -rf ./*.(jpeg|jpg|png|svg|ico|gif|webm|pdf|bmp|tiff) /$dirname/

cp -rf $dirname/*.(jpeg|jpg|png|svg|ico|gif|webm|pdf|bmp|tiff) ./
