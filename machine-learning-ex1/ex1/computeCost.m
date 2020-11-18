function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

m = size(X,1);

% 写法1
% hypothesis = X * theta;
% sqrErrors = (hypothesis - y).^2;

% 写法2
x = X(:,2);
t0 = theta(1);
t1 = theta(2);
h = t0 + t1 * x;
sqrErrors = sum((h - y).^2);

J = 1/(2*m) * sum(sqrErrors);
% =========================================================================

end
