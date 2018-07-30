function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
[r, c] = size(X);
temp = zeros(c);
temp_data = 0;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
for theta_index = 1:c

temp_data = 0;


for index = 1:r
temp_data+= alpha/r * (computeResult(X, y, theta, index)-y(index))*X(index,theta_index);
end
temp(theta_index) = theta(theta_index) - temp_data;

end

for i = 1:c
theta(i) = temp(i);
end



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end




function j = computeResult(X, y, theta, row)


j = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

[r,c] = size(X);






for coloumn = 1:c
j = j + theta(coloumn)*X(row, coloumn);
end



end
