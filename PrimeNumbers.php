#!/usr/bin/php
<?php
$n=100000; # check for n number of primes
$pn=array(2, 3); # the array into which the prime numbers will go
print $pn[0]."\n"; # prints the first prime "2"
print $pn[1]."\n"; # prints the second prime "3"
$np=count($pn); # gets the number of values in the "pn" array
for($x=3; $x<$x+1; $x=$x+2){ # loops through odd numbers to test for prime
for($i=0; $i<sqrt($np);$i++){ # loops through the index values of the "pn" array
$test=$x % $pn[$i]; # checks to see if any value "pn" will divide evenly into x
if($test==0){ # if some value "pn" does divide evenly into x...
break;}} # ... get the next value x
if($test!=0){ # if no value "pn" divides evenly into x...
$pn[]=$x; # add x to the "pn" array
$np=count($pn); # get the number of values in the "pn" array
print"$x\n"; # prints prime numbers to terminal
if($np==$n){break;}}} # quits the program once there are "n" primes in "pn"
?>

# Tested on March 1, 2018
#
# Script Data:
# Generated 100,000 prime numbers starting with 2 and ending with 1,299,709
#
# TIME: real	0m2.076s
# TIME: user	0m1.696s
# TIME: sys	0m0.372s
#
# OS: Amazon Linux
# vendor_id	: GenuineIntel
# model name	: Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
# cpu MHz		: 2394.562
# cache size	: 30720 KB
# MemTotal: 2.049 GB
