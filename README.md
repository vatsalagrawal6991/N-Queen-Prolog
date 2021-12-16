# Made By Vatsal Agrawal
# N-Queen-Prolog
Standard N queen problem in prolog with optimization to take less time

**************************HOW TO MAKE EXECUTABLE AND RUN PROGRAMME******************************
1) we just have to query like
main(N,L).
to get all possible solution.
here N is fixed quantity and is not variable .
L can be variable or some fixed quantity.
here it will backpropogate for L but not for N
Or we can use query like
main2(N,L).
here N can be variable and it will backpropogate upto 10000.

Note 

I have used optimization and reorder the subgoals to make it faster 
also as in operator is not working in gprolog so I have used between operator.
Note for value of N above 10 it will take some time to produce answer also no efficient algo was asked.


Problem Statment

The N-queens problem is a challenge
to set N queens on a NxN grid so that no queen can attack any other queen. Create a
Prolog program to solve the N-queens problem. The output of the program should be a list of
(row,columm) positions where the N (for some concrete value of N) queens can be placed.
