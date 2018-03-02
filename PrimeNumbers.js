<script>
var n=100000;// check for n number of primes
var z=n*100; // allows large enough prime numbers for n primes
var PN=[2,3]; // the array into which the prime numbers will go
for(var i=3;i<=z;i=i+2){ // loops through odd numbers
for(var ii=0;ii<Math.sqrt(PN.length);ii++){ // loops through the "PN" array
var v=i%PN[ii]; // checks i with each value of "PN" for factorability
if (value===0){break;}} // if i is not prime, then get the next i
if (value!==0){PN.push(i); // if i is prime, then put it into "PN"
console.log(i); // print the results to terminal
if(PN.length===n){break;}}} // Exits once "n" primes have been generated
</script>
