---

title: Pushing R to the max
---

When running stochastic simulations with many iterations, there is a need for speed. The nowadays very common statistical language R provides a simple syntax and a wealth of packages, but it is known to be slow. Several attempts to speed up the basic core functions of R were made, but they never made it in the base package. [Brian McGill has written a nice overview on that topic at *Dynamic Ecology*](https://dynamicecology.wordpress.com/2014/01/14/r-isnt-just-r-anymore/). 

First of all, I program very intensive simulations in R. Speed does matter for me. However, like many of the commenters on Brians post, I do not think the add-on package approaches described by Brian are helping but no long term solutions. 

In my opinion, the best way is to put a reasonable effort in speed optimization of your code. To do that, I identify the simulation's bottlenecks and address them first by comparing different coding solutions against each other using benchmarking.
For speed gain, I am basically using these techniques, wherever appropriate: 
 - banning for-loops
 - allocate memory
 - parallelisation
 - outsourcing to C++
 - compiling functions
 
 

In the following, I want to give a very short introduction in how this works for me. 

## benchmarking (using the package `rbenchmarking`)


## banning for-loops (using vector operations or the functions `lapply()` or `sapply()` instead )


## parallelisation (using the packages `foreach` and `doSNOW` )


## outsourcing to C (using ``)
