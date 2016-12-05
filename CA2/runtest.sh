#!/bin/bash
# Runs with 1, 2, 3,.. to 50 concurrent users
mpstat 3 50 | awk '
BEGIN {
        print "C0\tN\tidle"
        count=1
      }
{
 if($12!="%idle" && $1!="Average:" && $2=="all")
     {
       print $2, count++, $12
     }
}' & for i in {1..50}
       do
         # loadtest runs during 3 seconds
         timeout 3s ./loadtest $i 
       done
