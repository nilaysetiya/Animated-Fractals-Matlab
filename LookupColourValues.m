function [V] = LookupColourValues(colour,colours,values)
% This function looks up the colour values for a named colour, from a list
% of provided colours and their values.
% Inputs: colour = String containing the name of the colour to look up
%         colours = A cell array containing colour names
%         values = 2D array containing colour values
% Output: V = colour values of a specific colour
% Author: Nilay Setiya


% Initial condition for indicator variable n. An indicator variable is used
% here to indicate whether a colour is found in the cell array containing
% all colours. If a colour is not found the if loop at the end will assign
% V the default 0 0 0 values and display 'Colour not found'. 
n = 0;

% A for loop here is needed to go through each colour name and check
% whether its in the 'colours' cell array.
for x = 1:length(colours)
    
    % The strfind function compares the input colour name with colour names
    % in the cell array regardless of case. 
    y = (strfind(lower(colour),lower(colours{x})));
    
    % If a colour is found V is assigned the colour values of the colour
    % name thats found in the 'colours' cell array.
    if y == 1
        V = values(x,1:3);
        
        % Indicator variable n here indicates a colour is found as it has a
        % value of 1. 
        n = 1; 
    end
end

% If a colour is not found, indicator variable n will have a value of zero
% so the following set of commands can be carried out and display 'Colour
% not found' and assign V the default colour values of 0 0 0, as required.
if n == 0
    disp('Colour not found');
    V = [0 0 0];
end
end