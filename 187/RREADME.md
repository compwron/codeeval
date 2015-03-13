https://www.codeeval.com/browse/187/

CONSECUTIVE PRIMES
CHALLENGE DESCRIPTION:

Alice has an even number of N beads, and each bead has a number from 1 to N painted on it. She would like to make a necklace out of all the beads, with a special requirement: any two beads next to each other on the necklace must sum to a prime number. Alice needs your help to calculate how many ways it is possible to do so.

For example:

N = 4

There are two possible ways to build the necklace. Note that the last bead connects to the first bead.

1 2 3 4
1 4 3 2
Note: The necklace should be unique.
For example: 1 2 3 4 is the same as 2 3 4 1 and 3 4 1 2 and 4 1 2 3.



So the answer is 2.

INPUT SAMPLE:

The inputs consists of one even integer on a line. Each integer N is 2 <= N <= 18.

For example:


1
2
3
2
4
5
OUTPUT SAMPLE:

Print a line containing the number of ways to make a necklace according to the above rules. If not even number print 0.

For example:


1
2
3
1
2
0
CONSTRAINTS:

2 <= N <= 18
Number of test cases is 5.
