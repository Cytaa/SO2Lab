#!/bin/bash
dir=$1

./skryptZadanie1.sh  $dir

cp -P $PWD/$dir/E/link_bez_plik1 $PWD/$dir/A/C/
cp -P $PWD/$dir/E/link_plik3 $PWD/$dir/A/C/

#wzgledny link nie dziala. Powodem jest zmiania sciezki do pliku z ktorym jest on polaczony wzgledem jego pozycji w drzewie folderow
#bezwgledny link dziala poniewaz adres jego targetu nie jest uzalezniony od jego(linku) polozenia
cp -L $PWD/$dir/E/link_bez_plik4 $PWD/$dir/A/C/

