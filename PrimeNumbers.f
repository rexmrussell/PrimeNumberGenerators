program prime
implicit none
integer :: np, at, found, i, f3 ! variables that will hold integer values
complex :: f1 !variable that will hold complex value
real    :: f2 !variable that will hold real value
logical :: is_prime ! variable that will hold logical value
integer, allocatable, dimension(:) :: prm ! array that will hold the prime numbers
np = 100000 ! number of primes to generate
allocate(prm(np)) ! allocates room in "prm" array for the prime numbers
prm(1) = 2 ! The first position in the "prm" array will be: 2
prm(2) = 3 ! The second position in the "prm" array will be: 3
prm(3) = 5 ! The third position in the "prm" array will be: 5
at = 7 ! "at" numbers will be checked for prime
found = 3 ! tally of number of prime numbers found
f1 = 3 ! highest current index number for "prm" array
print *, prm(1) ! print first prime to terminal
print *, prm(2) ! print second prime to terminal
print *, prm(3) ! print third prime to terminal
do ! start first loop
is_prime = .true. ! assume prime
f2 = sqrt(f1) ! get squareroot of highest index number of "prm" array
f3 = nint(f2) ! make f3 an integer of f2
do i = 1, f3 ! the squareroot of the index of "prm" set as the upper-limit
if (modulo(at, prm(i)) == 0) then ! is "at" divisible by any number in "prm"?
is_prime = .false. ! "at" is not prime.
exit ! get new value "at" to test
end if
end do  ! move on, none of "prm" values will divide evenly into "at"
if (is_prime) then ! if "at" is prime...
found = found + 1 ! increase the number of primes "found" by one
f1 = f1 +1 ! increase the index ceiling by one
prm(found) = at ! insert prime number "at" into "prm" at index "found"
print *, at ! print "at" to terminal
end if
at = at + 2 ! increase the value of "at" by one
if (found==np) then ! stop when all primes are found
exit
end if
end do
end program prime ! compile using: gfortran -ffree-form PrimeNumbers.f

! Tested on March 1, 2018
!
! Script Data:
! Generated 100,000 prime numbers starting with 2 and ending with 1,299,709
!
! TIME: real	0m0.646s
! TIME: user	0m0.324s
! TIME: sys	0m0.316s
!
! OS: Amazon Linux
! vendor_id	: GenuineIntel
! model name	: Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
! cpu MHz		: 2394.562
! cache size	: 30720 KB
! MemTotal: 2.049 GB
!
! GNU Fortran (GCC) 4.8.5 20150623 (Red Hat 4.8.5-11)
!
