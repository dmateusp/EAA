#!/bin/bash
# Runs with 1, 2, 3,.. to 50 (2 when testing) concurrent users
echo "C0 N idle"
for i in {1..50}
    do
    # loadtest runs during 5 seconds
    mpstat 4 1 > temp.txt & timeout 5s ./loadtest $i
    cat temp.txt | awk -v N="$i" -v C0="$(cat synthetic.dat | wc -l)" '{
    if($12!="%idle" && $1!="Average:" && $2=="all")
      {
         print C0, N, $12
      }
    }'
done
