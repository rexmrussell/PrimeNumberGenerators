#!/bin/bash
n=100 # Number of primes to generate
o=n*100 # sets the program to create "n" number of primes
declare pn=(2 3); # The array into which the primes will go
for ((i=3;$i<$o;i=$i+2)) # Loop generates only odd numbers to test for prime
  do pnn=${#pn[@]}; # measures the size of the "pn" array
  for (( ii=0; $ii<$pnn; ii=$ii+1)) # Loop creates index numbers for "pn" array
    do prime=`expr $i % ${pn[$ii]}` # Modulus checks i with all values "pn"
    if (($prime==0)) # if a number from "pn" is able to divide into i...
      then break # ...then the next value i is tested
    fi
  done
  if (($prime!=0)) # if none of the numbers in "pn" are able to divide into i...
    then
    pn+=($i) # ... then i is prime, and is inserted into the "pn" array
    echo $i # print the i to terminal
    if ((${#pn[@]}==$n)) # if the "pn" array has n number of primes...
      then break # ... then quit the loop, which exits the program
    fi
  fi
done;

# Tested on March 1, 2018
#
# Script Data:
# Generated 100 prime numbers starting with 2 and ending with 557
#
# TIME: real	0m3.798s
# TIME: user	0m0.180s
# TIME: sys	0m0.428s
#
# OS: Amazon Linux
# vendor_id	: GenuineIntel
# model name	: Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
# cpu MHz		: 2394.562
# cache size	: 30720 KB
# MemTotal: 2.049 GB
#
# Bash version 4.2.46(2)-release (x86_64-redhat-linux-gnu)
