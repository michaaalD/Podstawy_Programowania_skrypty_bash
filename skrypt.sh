#!usr/bin/bash

echo Podaj sciezke do katalogu, wymiar x wymiar y 

cd $1

for i in *JPEG
do
mv "$i" `echo "$i" sed s/JPEG/jpg/` 
done

for i in *PNG
do
mv "$i" `echo "$i" sed s/PNG/png/` 
done

for i in *png
do 
mv "$i" `echo "$i" sed s/ /_/` 
done

for i in *jpg 
do 
mv "$i" `echo "$i" sed s/ /_/` 
done

mogrify -resize $2x$3 *.png
mogrify -resize $2x$3 *.jpg



