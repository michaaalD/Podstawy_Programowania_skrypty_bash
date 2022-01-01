#!usr/bin/bash

#sciezka do folderu z plikami, wybierana jako $1 argument przy wywolaniu skryptu w termnialu
# $2 argument wywolania skryptu to procentowa wartosc zmiany wymiaru obrazkow

cd $1 

# zmiana nazwy plikow z PNG na png
for i in *PNG;
do
    mv "$i" "${i//PNG/png}";
done

# zmiana nazwy plikow z JPG na jpg
for i in *JPG;
do
    mv "$i" "${i//JPG/jpg}";
done

# zmiana nazwy plikow png ze spacja na 'podloge'
for i in *png;
do 
mv "$i" "${i// /_}";
done

# zmiana nazwy plikow jpg ze spacja na 'podloge'
for i in *jpg;
do 
mv "$i" "${i// /_}";
done

# zmiana nazwy plikow jpeg ze spacja na 'podloge'
for i in *jpeg;
do 
mv "$i" "${i// /_}";
done

#zmiana rozmiaru plikow podajac procentowa wartosc oryginalu
mogrify -resize $2% *.png

mogrify -resize $2% *.jpg

mogrify -resize $2% *.jpeg



#utworzenie archiwum i przeniesienie do katalogu 
tar -cf archiwum_plikow.tar lab04_test/

#poinformowanie o wykonaniu skryptu
echo Zmieniono nazwy plikow i wymiary zdjec

#Michal Dos
# Temat : Praca z uniksowym interpreterem polecen oraz systemem X-Window
# data 29.12.2021r.
#TESTY:
# Pierwsze testy zmiany nazwy i rozmiaru obrazkow  przeprowadzilem na plikach z poprzednich cwiczen, ze zmienionymi nazwami rozszerzen na wielkie litery. Program poprawnie zmienial nazwy plikow i rozm# iary obrazkow, co bylo widoczne przy uzyciu komendy 'display'. Nastepnie dodalem komende tworzaca archiwum. Program rowniez poprawnie towrzyl archiwum zmienionych plikow do wskazanego katalogu.
# Pozniej testy wykonwyalem przy uzyciu plikow do pracy z diablo. Dla tych plikow program rowniez poprawnie dzialal.
#WNIOSKI:
# Program wydaje sie poprwanie zmieniac nazwy plikow i ich rozmiary.


