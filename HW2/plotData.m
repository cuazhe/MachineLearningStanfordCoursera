function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
N = length(X)
%colorchoice = ['ro', 'b+'];
for i=1:N
    %plot(X(i, 1), X(i, 2), colorchoice(y(i)));
    if y(i) == 1
        plot(X(i, 1), X(i, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 10);
    else
        plot(X(i, 1), X(i, 2), 'ko', 'LineWidth', 2, 'MarkerSize', 10);
    end
end








% =========================================================================



hold off;

end
