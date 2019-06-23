function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
%C = 1;
%sigma = 0.3;
C = 0.01;
sigma = 0.01;
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
cur_best_error = realmax;
cur_best_C = 1;
cur_best_sigma = 0.3;
for c_iter = 1:8
    for sigma_iter = 1:8
        cur_C = C * 3^(c_iter - 1);
        cur_sigma = sigma * 3^(sigma_iter - 1);
        model = svmTrain(X, y, cur_C, @(x1, x2) gaussianKernel(x1, x2, cur_sigma));
        predictions = svmPredict(model, Xval);
        cur_error = mean(double(predictions ~= yval));
        if cur_error < cur_best_error
            cur_best_error = cur_error
            cur_best_C = cur_C;
            cur_best_sigma = cur_sigma;
        end
    end
end
C = cur_best_C;
sigma = cur_best_sigma;






% =========================================================================

end
