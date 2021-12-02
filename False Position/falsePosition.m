function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
% Definitions of outputs:
%
%Defintion of inputs:
%

if nargin<3, error ('at least 3 input arguments required')
end
test = func(xl) * func(xu);
if test > 0, error ('no sign change')
end
if nargin < 4 || isempty (es), es = 0.0001;
end
if nargin < 5 || isempty (maxit), maxit = 200;
end 
iter = 0;
xr = xl;
ea = 100;

while(ea >= es || iter <= maxit)
    xrold = xr;
    xr = (xu - ((func(xu) * (xl - xu))/(func(xl) - func(xu))));
    iter = iter + 1;
    if xr ~= 0
        ea = abs((xr - xrold)/xr) * 100;
    end
    test = func(xl) * func(xr);
    if test < 0 
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end 
end
root = xr;
fx = func(xr);