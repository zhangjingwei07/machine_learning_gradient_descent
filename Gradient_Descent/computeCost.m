function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
j = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

[r,c] = size(X);





for row = 1:r
j = 0;
for coloumn = 1:c
   j = j + theta(coloumn)*X(row, coloumn);
end

J += 0.5 / r * (j-y(row))^2;
end






% =========================================================================

end
