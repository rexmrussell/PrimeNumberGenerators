#!/usr/bin/python
from math import sqrt # import squareroot module
n=int(100000) # number of primes to generate
z=n*100 # allows large enough primes for n primes
PN=[2,3,5] # array into which primes will be stored
for i in range(7,z,2): # loops through odd numbers to be check for prime
    for ii in range(0,int(sqrt(len(PN))),1): # loops through "PN" values to test i
        w = i%PN[ii] # modulus check on i with each value "PN"
        if (w==0): break # if i can be evenly divided by a value "PN", get new i
    if(w<>0):PN.append(i) # if i cannot be evenly divided by "PN", insert i into "PN"
    x=(len(PN)); # get the number of values in "PN"
    if(x==n):break # exits program once "n" primes have been generated
for z in PN:print z # print all primes to terminal

# Tested on March 1, 2018
#
# Script Data:
# Generated 100,000 prime numbers starting with 2 and ending with 1,299,709
#
# TIME: real	0m6.200s
# TIME: user	0m6.124s
# TIME: sys	0m0.052s
#
# OS: Amazon Linux
# vendor_id	: GenuineIntel
# model name	: Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
# cpu MHz		: 2394.562
# cache size	: 30720 KB
# MemTotal: 2.049 GB
#
# Python 2.7.13
