#!/usr/bin/perl
my($v,$x,$mod,$pn); # scoped variables
my$n=100000; # number of primes to generate
my@pn=(2,3); # array into which primes will go
my$z=$n*100; # raise prime ceiling so n primes can be created
print$pn[0]."\n"; # print first prime number
print$pn[1]."\n"; # print second prime number
$pn=scalar(@pn); # get the number of primes in "pn"
for(my$i=3;$i<$z;$i=$i+2){ # loop through each odd number
for($x=0;$x<sqrt($pn);$x=$x+1){ # loop through values in "pn"
$mod=$i%$pn[$x]; # tests to see if i is prime
if($mod==0){last;}} # if i is not prime, get new i
if($mod!=0){push(@pn,$i); # if i is prime, insert it into "pn"
$pn=scalar(@pn); # get number of values in "pn"
print $i."\n"; # print prime numbers to screen
if($pn==$n){last;}}} # exit after "n" primes have been generated

// Tested on March 1, 2018
//
// Script Data:
// Generated 100,000 prime numbers starting with 2 and ending with 1,299,709
//
// TIME: real	0m5.748s
// TIME: user	0m5.724s
// TIME: sys	0m0.008s
//
// OS: Amazon Linux
// vendor_id	: GenuineIntel
// model name	: Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
// cpu MHz		: 2394.562
// cache size	: 30720 KB
// MemTotal: 2.049 GB
//
