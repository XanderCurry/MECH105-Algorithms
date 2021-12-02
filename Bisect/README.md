# Bisect
## This is an algorithm for the bisection root finding method
### This algorithm requires specific inputs, so pay attention to these when using the function.

Inputs:
* Func = Name of function 
* xl = Lower guess 
* xu = Upper guesses
* es = Desired relative error (default = 0.0001%)
* maxit = Maximum allowable iterations (default = 50)
* p1,p2,â€¦ = Additional parameters used by func

Outputs:
* root = Real root
* fx = Function value at root
* ea = Approximate relative error (%)
* iter = Number of iterations
