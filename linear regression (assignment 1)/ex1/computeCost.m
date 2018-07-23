function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
%J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Squared error function X and y are not scalar values, but matrices whose
% rows represent the examples from the training set.

% Make the prediction based on Xinputs and theta
% Prediction = DataMatrix * Parameters

predictionMatrix = X * theta;

errorMatrix = predictionMatrix - y;

sq_err = errorMatrix.^2;

sumOfErrors = ones(1,m)*sq_err

J = sumOfErrors / ( 2 * m );


% =========================================================================

end
