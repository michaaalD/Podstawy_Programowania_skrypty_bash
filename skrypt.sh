#!usr/bin/bash

echo Podaj sciezke do katalogu, wymiar x wymiar y 

cd $1

for i in *JPEG
do
mv $i $(echo $i | sed 's/JPEG/jpg/g')
done

for i in *PNG
do
mv $i $(echo $i | sed 's/PNG/png/g')
done

for i in *png
do 
mv $i $(echo $i | sed 's/ /_/g')
done

for i in *jpg
do 
mv $i $(echo $i | sed 's/ /_/g')
done

mogrify -resize $2% *.png

mogrify -resize $2% *.jpg


tar -cf archiwum_plikow.tar 



