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
