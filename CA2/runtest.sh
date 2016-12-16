#!/bin/bash
# Runs with 1, 2, 3,.. to 50 concurrent users
echo "C0 N idle"
for i in {1..50}
    do
    # loadtest runs during 11 seconds, a report on CPU usage is create every second during 10 seconds and added to temp.txt
    mpstat 1 10 > temp.txt & timeout 11s ./loadtest $i

    # the temp.txt containing the CPU reports is filtered and only the average is printed
    cat temp.txt | awk -v N="$i" -v C0="$(cat synthetic.dat | wc -l)" '{
    if($12!="%idle" && $1=="Average:")
      {
         print C0, N, $12
      }
    }'
    done
# temp.txt is removed as it is not useful anymore
rm temp.txt

