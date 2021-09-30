function [ColourMap] = CreateColourmap(x,y,n)
% This function creates a custom colour map, with n shades of colour that
% range from a specified starting colour through to a specified ending 
% colour. 
% Inputs: x = 1x3 array containing starting colour values
%         y = 1x3 array containing ending colour values
%         n = number of rows to generate in the colour map
% Outputs: ColourMap = nx3 array containing values for a colour map
% Author: Nilay Setiya

% Preallocating ColourMap array with to the required size
ColourMap = zeros(n,3);

% Creating colour map values for red, green, and blue with the required
% number of rows (n). The transpose of red, green, and blue is taken in
% order to get individual nx1 arrays for all three colours.
r = (linspace(x(1),y(1),n))';
g = (linspace(x(2),y(2),n))';
b = (linspace(x(3),y(3),n))';

% Stores the red, green and blue nx1 arrays together in the nx3 array
% called 'ColourMap'. 
ColourMap(:,1) = r;
ColourMap(:,2) = g;
ColourMap(:,3) = b;
end