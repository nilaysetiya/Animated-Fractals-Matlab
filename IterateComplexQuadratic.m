function [iteration] = IterateComplexQuadratic(z,c,a)
% This function repeatedly applies the complex quadratic
% f(z) = z^2 + c for a specified value of z and c until f excedes the bound
% or until the maximum number of iterations is reached. The maximum number
% of iterations is specified by the user.
% Input: z = initial complex value
%        c = specified complex value
%        a = cutoff value
% Output: iteration = number of iterations
% Author: Nilay Setiya

iteration = 0; % Initial number of iterations
f = 0; % Inital value for f.

% This for loop applies the complex quadratic until f excedes the bound or
% until the maximum number of iteration is reached.
for x = 1:a % Runs the for loop to the cutoff value
    % The if statement here checks if f is within the bound and if it's in
    % the bound the complex quadratic is applied.
    if abs(f)<3
        f = z^2 + c; % Complex quadratic equation
        z = f; % Replaces the output of the quadratic as the input
        
        % Counts the number of iterations before f excedes the bound.
        iteration = iteration + 1; 
        
    elseif abs(f)>3
        break % Stops the for loop when the f excedes the bound.
    end 
end

% If f never excedes the bound it sets the iteration value to zero and
% returns an output of zero as required when f never excedes the bound.
if abs(f)<3
    iteration = 0;
end

end