#!/bin/python3
from math import sqrt
NumberOfPrimes=int(100000)
End=NumberOfPrimes*100
PrimeNumbersArray=[2,3,5]
for candidate in range(7, End, 2): #loops through odd numbers to be check for prime    
    for denominator in PrimeNumbersArray: #loops through denominator to determine if candidate is prime
        if denominator > sqrt(candidate): 
            break
        ModResult = candidate%PrimeNumbersArray[denominator] # Modulus check to determine if candidate is prime
        if (ModResult==0): 
            break 
    if(ModResult!=0):
        PrimeNumbersArray.append(candidate)
    SizeOfPrimeNumbersArray=(len(PrimeNumbersArray)); 
    if(SizeOfPrimeNumbersArray==NumberOfPrimes): # Exit the program once the desired number of primes has been reached
        break
for NumberCeiling in PrimeNumbersArray: # Print results
    print (NumberCeiling)
    
# Tested on March 12, 2018
#
# Script Data:
# Generated 100,000 prime numbers starting with 2 and ending with 1,299,689
#
# TIME: real	0m5.837s
# TIME: user	0m5.812s
# TIME: sys	    0m0.004s
#
# OS: Amazon Linux
# vendor_id	: GenuineIntel
# model name	: Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
# cpu MHz		: 2394.562
# cache size	: 30720 KB
# MemTotal: 2.049 GB
#
# Python 3.6.0
