#!/bin/bash

# ustawienie set -e powoduje ze nasz skrypt zostanie zatrzymany jesli
# ktoras z jego komend zakonczy sie bledem
set -e

# bash pozwala nam tworzyc proste funkcje
# ta wyswietla losowa liczbe z podanego zakresu
# np. `random 100`
function random() {
    # zmienna $RANDOM jest tu uzyta przeliczona modulo (jeden dodane aby
    # nie zanizac wyniku
    echo $(((RANDOM % $1) + 1))
}

# funkcja make_text generuje losowa ilosc linii w zakresie od 10 do 110
function make_text() {
    echo "1"
    echo "2"
    echo "3"
    echo "4"
    echo "5"
    echo "6"
    echo "7"
    echo "8"
    echo "9"
    echo "10"
    extra_lines=$(random 100)
    for i in $(seq $extra_lines)
    do
        echo $i
    done
}

# funkcja sortujaca pliki po rozmiarze w aktualnym katalogu
function files_by_size() {
    # `du -b *` wyswietla wszystkie pliki w katalogu z ich rozmirem w bajtach (-b)
    # `sort -nr -k1` odbiera wynik `du` i go sortuje
    #    -n traktuje wartosci jako numeryczne
    #    -r odwrocone sortowanie
    # `awk '{print $NF}'` odbiera wynik sort i pokazuje tylko ostatnia kolumne
    #    w tym przypadku jest to nazwa pliku gdyz `du` pokazuje rozmiar w pierwszej
    #    kolumnie a nazwe w drugiej
    du -b * | sort -nr -k1 | awk '{print $NF}'
}

# zapisuje w zmiennej ilosc plikow na katalog
num_files_each_directory=5

# tworze pierwszy katalog
mkdir zad_1_script
# wchodze to katalogu
cd zad_1_script

# tworze tablice ze wszystkimi katalogami ktore bede chcial utworzyc
directories=('to_do' 'in_progress' 'in_review' 'verified')

# tworze petle zeby nie powielac kodu dla kazdego katalogu
for directory in "${directories[@]}"
do
    # od tego momentu pod ${directory} mam kolejna nazwe katalogu
    echo "Making ${directory} directory"
    mkdir ${directory}

    # tutaj `seq` z liczby 5 (num_files_each_directory) tworzy mi
    # 1, 2, 3, 4, 5 ktore kolejno bede dostepne w zmiennej $file_no
    for file_no in $(seq $num_files_each_directory)
    do
        echo "Making file: ${directory}"/plik_"${file_no} with random content."
        # uzywam mojej funkcji make_text zeby zapisac pseudo-losowa zawartosc
        make_text > ${directory}"/plik_"${file_no}
    done
done

# tutaj sprawa jest raczej prosta
cp in_review/* in_progress/
rm -rf in_review
mv verified done

cd to_do
# uzywam mojej funkcji files_by_size i wyciagam ostani wpis (`tail`)...
smallest_in_to_do=$(files_by_size | tail -n 1)
echo "Printing contents of $smallest_in_to_do as the smallest file."
cat $smallest_in_to_do

# ... analogicznie postepuje z reszta zadania
cd ../in_progress
biggest_in_in_progress=$(files_by_size | head -n 1)
echo "Printing 2 last lines of $biggest_in_in_progress as the biggest file."
tail -n 2 $biggest_in_in_progress

cd ../done
biggest_in_in_done=$(files_by_size | head -n 1)
echo "Printing 3 first lines of $biggest_in_in_done as the biggest file."
head -n 3 $biggest_in_in_done
