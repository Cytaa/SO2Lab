#!/bin/bash
# dir pierwszy argument przyjmowany przy wywolywaniu skryptu

dir=$1


mkdir -p $dir/A/B -p $dir/A/C/D $dir/E
touch $dir/A/plik1.txt $dir/A/B/plik2.txt $dir/A/C/D/plik3.txt $dir/E/plik4.txt

echo "Test 1" >> $dir/A/plik1.txt
echo "Test 2" >> $dir/A/B/plik2.txt
echo "Test 3" >> $dir/A/C/D/plik3.txt
echo "Test 4" >> $dir/E/plik4.txt

ln -s $PWD/$dir/A/plik1.txt $PWD/$dir/E/link_bez_plik1
ln -s $PWD/$dir/E/plik4.txt $PWD/$dir/E/link_bez_plik4
ln -s ../plik1.txt $dir/A/B/link_plik1
ln -s ../A/B/plik2.txt $dir/E/link_plik2
ln -s ../A/C/D/plik3.txt $dir/E/link_plik3
ln -s ../../../E/plik4.txt $dir/A/C/D/link_plik4