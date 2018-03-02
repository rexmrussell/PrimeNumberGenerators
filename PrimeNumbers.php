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
