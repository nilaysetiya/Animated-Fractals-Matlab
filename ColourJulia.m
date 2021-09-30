function [J] = ColourJulia(points,colour)
% This function colours the points in a Julia set black and the points 
% outside of the set an appropriate shade of colour selected from a 
% provided colour map. 
% Inputs: points = 2D array describing the nature of points
%         colour = 2D array the size of r x 3 that stores the values for a
%                  colour map.
% Output: J = RGB image of the Julia Set
% Author: Nilay Setiya

% Gets the size of the 'points' array as the image will array needs to have
% the same number of rows and columns as the 'points' array.
[rows,cols] = size(points);

% Preallocates the image array with the same number of columns as the
% 'points' array that describes the nature of points.
Image = zeros(rows,cols,3);

% The nested for loop here goes through each point on the 'points' array
% and assigns a colour value between 0 and 255 on the Image array based on
% the colour values in the 'colour' array.
for x = 1:rows
    for y = 1:cols
        
        % Gets the value from the 'points' array to assign a colour value.
        value = points(x,y);
        
        % The if statement here checks the value and if its a non-zero
        % value it assigns it a colour value from the 'colour' array that
        % contains the colour map values and then multiplies it by 255 in
        % order to get uint8 values. If 'value' is zero it the else
        % statement makes that colour black by assigning it a value of
        % zero.
        if value ~= 0 
            Image(x,y,1) = colour(value,1) .* 255;
            Image(x,y,2) = colour(value,2) .* 255;
            Image(x,y,3) = colour(value,3) .* 255;
        else 
            Image(x,y,1) = 0;
            Image(x,y,2) = 0;
            Image(x,y,3) = 0;
        end
    end
end

% Converts the 3D J image array into uint8 format so the image can be
% displayed.
J = uint8(Image);
end