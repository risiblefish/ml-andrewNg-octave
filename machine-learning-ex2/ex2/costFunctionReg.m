function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

m = size(X,1);

z = X * theta;

hypothesis = sigmoid(z);

temp = theta;
temp(1) = 0; % should not regularize theta1

reg = lambda / (2 * m) * sum(temp .^ 2);

part1 = -y .* log(hypothesis);
part2 = (1 - y) .* log(1 - hypothesis);

J = sum(part1 - part2) / m + reg;

grad = sum((hypothesis - y) .* X) / m + lambda / m * temp'; % temp' 表示求(令第1项为0的)theta的转置
% =============================================================

end
