#!/bin/bash

#Sprawdź ile jest elementów w folderze
ILOSC=`ls ./img/ | wc -l`
echo "Ilość elementów w folderze:" $ILOSC
ILE=$ILOSC

for file in ./*
do
	cwebp -q 50 "${file}" -o "${file%.*}.webp"
done