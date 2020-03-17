#!/bin/bash

mkdir -p $1/A/B -p $1/A/C/D $1/E
touch $1/A/plik1.txt $1/A/B/plik2.txt $1/A/C/D/plik3.txt $1/E/plik4.txt

echo "Test 1" >> $1/A/plik1.txt
echo "Test 2" >> $1/A/B/plik2.txt
echo "Test 3" >> $1/A/C/D/plik3.txt
echo "Test 4" >> $1/E/plik4.txt

ln -s $PWD/$1/A/plik1.txt $PWD/$1/E/link_bez_plik1
ln -s $PWD/$1/E/plik4.txt $PWD/$1/E/link_bez_plik4
ln -s ../plik1.txt $1/A/B/link_plik1
ln -s ../A/B/plik2.txt $1/E/link_plik2
ln -s ../A/C/D/plik3.txt $1/E/link_plik3
ln -s ../../../E/plik4.txt $1/A/C/D/link_plik4