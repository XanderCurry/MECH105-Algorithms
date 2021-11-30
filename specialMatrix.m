function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice

A = [1:m]
% A is first an array from 1 to whatever m value you specify
for n = 2:n
    A(n,:) = A(n-1,:) +1
end 
% This for loop is to create a matrix of the correct size, and correct first row and first column
% The next for loops will target the second row and column, while ignoring the frist row and column

for n = 2:n
    for m = 2:m
            A(n,m) = A((n-1),m) + A(n,(m-1))
    end
% These for loops target the seocnd row and column, then they add the value from the left, and from above to fill in the middle
% values. We need a nested for loop so we can target and use both the row and column before to get the correct sum inside the matrix.


end
% Things beyond here are outside of your function

if nargin >2
    error('Error, Too many inputs')
end

