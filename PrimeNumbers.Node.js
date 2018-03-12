#!/usr/bin/node
var sqrt=require('math-sqrt'); // use the math squareroot module
var n=100000; // check for n number of primes
var PN=[2,3]; // the array into which the prime numbers will go
console.log(PN[0]); // prints the first prime number
console.log(PN[1]); // prints the second prime number
var value; // holds the resuts of the modulus
for(var i=3;i<=i+1;i=i+2){ // loops through odd numbers
for(var ii=0;ii<sqrt(PN.length);ii++){ // loops through the "PN" array
value=i%PN[ii]; // checks i with each value of "PN" for factorability
if(value===0){break;}} // if i is not prime, then get the next i
if(value!==0){PN.push(i); // if i is prime, then put it into "PN"
console.log(i);} // print the results to terminal
if(PN.length==n){break;}} // Exits once "n" primes have been generated
// Tested on March 1, 2018
//
// Script Data:
// Generated 100,000 prime numbers starting with 2 and ending with 1,299,709
// TIME: real	0m1.743s
// TIME: user	0m1.292s
// TIME: sys	0m0.440s
//
// OS: Amazon Linux
// vendor_id	: GenuineIntel
// model name	: Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
// cpu MHz		: 2394.562
// cache size	: 30720 KB
// MemTotal: 2.049 GB
//
// Node version: v9.8.0
