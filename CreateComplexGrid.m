function [grid] = CreateComplexGrid (n)
% This function creates a 2D array of size n x n which stores complex
% values in a square grid thats bounded by the lines x=-2, x=2 and y=2i, 
% y = -2i. 
% Input: n = positive integer n which defines the number of rows and 
%            columns in the square grid.
% Output: grid = square grid of complex numbers with n rows and n columns
% Author: Nilay Setiya

% Creates a linearly spaced vector of values between the bounds where n is
% the number of values and number of rows and columns required in the final
% grid.
rows = linspace(-2,2,n);
cols = linspace(2i,-2i,n);

% The meshgrid function produces two 2D arrays X and Y. X contains the real
% values while Y contains the imaginary values.
[X,Y] = meshgrid(rows,cols);

% Combining the 'real' X array and the 'imaginary' Y array gives us the 
% final square grid of complex numbers.
grid = X + Y;
end