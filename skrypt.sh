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



#!usr/bin/bash

#sciezka do folderu z plikami, wybierana jako 1 argument przy wywolaniu skryptu w termnialu
# 2 argument wywolania skryptu to procentowa wartosc zmiany wymiaru obrazkow

cd $1 

# zmiana nazwy plikow z PNG na png
for i in *PNG
do
    mv $i $(echo $i | sed 's/PNG/png/g');
done

# zmiana nazwy plikow z JPG na jpg
for i in *JPEG
do
mv $i $(echo $i | sed 's/JPG/jpg/g');
done

# zmiana nazwy plikow png ze spacja na 'podloge'
for i in *png
do 
mv $i $(echo $i | tr ' ' '_');
done

# zmiana nazwy plikow jpg ze spacja na 'podloge'
for i in *jpg
do 
mv $i $(echo $i | tr ' ' '_');
done

#zmiana rozmiaru plikow podajac procentowa wartosc oryginalu
mogrify -resize $2% *.png

mogrify -resize $2% *.jpg

#utworzenie archiwum i przeniesienie do katalogu 
tar -cf archiwum_plikow.tar lab04_test/

#poinformowanie o wykonaniu skryptu
echo Zmieniono nazwy plikow i wymiary zdjec

#Michal Dos
# Temat : Praca z uniksowym interpreterem polecen oraz systemem X-Window
# data 29.12.2021r.
#TESTY:
# Pierwsze testy zmiany nazwy i rozmiaru obrazkow  przeprowadzilem na plikach z poprzednich cwiczen, ze zmienionymi nazwami rozszerzen na wielkie litery. Program poprawnie zmienial nazwy plikow i rozm# iary obrazkow, co bylo widoczne przy uzyciu komendy 'display'. Nastepnie dodalem komende tworzaca archiwum. Program rowniez poprawnie towrzyl archiwum zmienionych plikow do wskazanego katalogu.
# Pozniej testy wykonwyalem przy uzyciu plikow do pracy z programem. Dla tych plikow program rowniez poprawnie dzialal.
#WNIOSKI:
# Program wydaje sie poprwanie zmieniac nazwy plikow i ich rozmiary.

#sed 's/ /_/g





