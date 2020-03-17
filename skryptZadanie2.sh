#!/bin/bash
./skryptZadanie1.sh  $1

cp -P $PWD/$1/E/link_bez_plik1 $PWD/$1/A/C/
cp -P $PWD/$1/E/link_plik3 $PWD/$1/A/C/

# wzgledny link nie dziala. Powodem jest zmiania sciezki do pliku z ktorym jest on polaczony wzgledem jego pozycji w drzewie folderow
#bezwgledny link dziala poniewaz adres jego targetu nie jest uzalezniony od jego(linku) polozenia
cp -L $PWD/$1/E/link_bez_plik4 $PWD/$1/A/C/

