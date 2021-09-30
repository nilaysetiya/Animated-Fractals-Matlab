function [points] = JuliaSetPoints(grid,c,a)
% This function determines whether or not each point in a grid of complex
% values is a member of the Julia set associated with a specified complex 
% value c.
% Input: grid = 2D array that contains the grid of complex values
%        c = Specified complex value
%        a = Cutoff value for maximum number of iterations
% Output: points: 2D array that describes the nature of each point in the
%         grid.
% Author: Nilay Setiya

[rows,cols] = size(grid); % Gets the size of the input grid

% Preallocates the size of the output grid. This makes the size of the
% output 'points' grid the same as the input 'grid'. 
points = zeros(rows,cols);

% The nested for loop here from 1 to rows, and 1 to cols, goes through 
% each point on the complex grid.
for x = 1:rows
    for y = 1:cols
        
        % Calls the IterateComplexQuadratic function to check the nature
        % of the point and stores the nature in the 'points' array at
        % position (x,y).
        points(x,y) = IterateComplexQuadratic(grid(x,y),c,a);       
    end
end
        
end