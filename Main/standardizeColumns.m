function [Standardized] = standardizeColumns(Data)
% STANDARDIZECOLUMNS Standardizes each column of the specified matrix using
% the formula (x - mu) / sigma.
%
% Each column is treated as its own data set, independent of one another.

Standardized = zeros(size(Data));

F = size(Data, 2);
for f = 1:F
    column = Data(:, f);
    mu = mean(column);
    sigma = std(column);
    
    Standardized(:, f) = (column - mu) / sigma;
end

end
