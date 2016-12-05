#!/bin/bash
# Runs with 1, 2, 3,.. to 50 (2 when testing) concurrent users
echo "C0 N idle"
for i in {1..10}
    do
    # loadtest runs during 5 seconds
    timeout 5s ./loadtest $i &
    # after 4 seconds printing a report on CPU usage
    sleep 2
    mpstat | awk -v N="$i" -v C0="$(cat synthetic.dat | wc -l)" '{
    if($12!="%idle" && $1!="Average:" && $2=="all")
      {
         print C0, N, $12
      }
    }'
done
