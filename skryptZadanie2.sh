#!/bin/bash
dir=$1

./skryptZadanie1.sh  $dir

cp -P $PWD/$dir/E/link_bez_plik1 $PWD/$dir/A/C/
cp -P $PWD/$dir/E/link_plik3 $PWD/$dir/A/C/

#wzgledny link nie dziala. Poniewaz zmieniajac polozenie linku wzglednego musimy zmieniec rowniez sciezke do targetu 
#bezwgledny link dziala poniewaz adres jego targetu nie jest uzalezniony od jego(linku) polozenia
cp -L $PWD/$dir/E/link_bez_plik4 $PWD/$dir/A/C/

