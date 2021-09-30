function [colours,values] = ReadColourValues(filename)
% This function reads in a list of colour names and their values from a
% specified text file, returning the colour names in a cell array and the 
% colour values in a 2D array.
% Inputs: filename = String containing the name of the text file
% Outputs: colours = Cell array containing the names of colours
%          values = 2D array containing colour values
% Author: Nilay Setiya

% Opens text file containing colour names and values 
fid = fopen(filename,'r');

% There is an if statement here in case the text file doesn't open. If the 
% text file doesn't open it'll display an error. 
if fid == -1
    fprintf(2,'Error opening file %s \n',filename)
else
    % fgetl reads the first line in the text file.
    line = fgetl(fid);
    k = 1; % initial number of line being read.
    while (ischar(line)) % checks if line contains characters
        
        % The strsplit function splits the line into a 1x4 cell array with
        % the first column containing the name of the colour while columns
        % 2,3, and 4 contain the colour values - R, G, B.
        string = strsplit(line);
        
        % Puts the colour name in a cell array called colours
        colours{k,1} = string{1}; 
        
        % Temporarily stores colour values in a cell array called values
        value{1} = string{2};
        value{2} = string{3};
        value{3} = string{4};
        
        % Converts colour values stored in cell array 'values' into a
        % number and stores it in a 2D array called 'value'.
        values(k,1) = str2num(value{1});
        values(k,2) = str2num(value{2});
        values(k,3) = str2num(value{3});
        
        % The k counter here keeps track of the lines and ensures that the
        % contents of line 1 are stored in row 1, line 2 stored in row 2,
        % line 3 stored in row 3, and so on.
        k = k+1;
        
        % Gets the next line in the text file 
        line = fgetl(fid); 
    end
end  

% Closes the text file
fclose(fid);
end