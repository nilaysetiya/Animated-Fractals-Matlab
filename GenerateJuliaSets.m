function [ImageArray] = GenerateJuliaSets(cvalues,n,colour)
% This function takes a sequence of complex values and generates the
% corresponding sequence of Julia set images.
% Inputs: cvalues = 1D array of complex values
%         n = Size of complex grid
%         colour = 2D array that contains the colourmap
% Output: ImageArray = Cell array that contains Julia Set images
% Author: Nilay Setiya

% Calls the CreateComplexGrid function in order to create a complex grid
% that is one of the inputs for the JuliaSetPoints function
grid = CreateComplexGrid(n);

% The for loop here goes through each complex value in the 1D array
% 'cvales' and produces a Julia Set image for each complex value. This
% image is then stored in 'ImageArray'.
for x = 1:length(cvalues)
    
    % JuliaSetPoints function is called here in order to get the nature of
    % complex points on the grid.
    points = JuliaSetPoints(grid,cvalues(x),length(colour));
    
    % The ColourJulia function then produces the Julia Set image.
    ImageArray{x} = ColourJulia(points,colour);
end
    
end