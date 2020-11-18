function J = costFunctionJ(X,y,theta) 

% X 是样本集（训练数据集）， y 是样本真实值

m = size(X,1);                  % 样本数量
predictions = X * theta;        % predictions of hypothesis on all m examples 即预测值
sqrErrors = (predictions-y).^2; % 方差

J = 1/(2*m) * sum(sqrErrors);