---

title: Pushing R to the max
---

When running stochastic simulations with many iterations, there is a need for speed. The beloved statistical language R provides a simple syntax and a wealth of packages, but it is known to be slow. Several attempts to speed up the basic core functions of R were made, but they never made it in the base package. [Brian McGill has written a nice overview on that topic at *Dynamic Ecology*](https://dynamicecology.wordpress.com/2014/01/14/r-isnt-just-r-anymore/). 

First of all, I program very intensive simulations in R. Speed does matter for me. However, like many of the commenters on Brians post, I guess the add-on package approaches described by Brian are helping but the actual problem is not tackled by it. The actual problem is bad style in programming.  

In my opinion, the best way is to put a reasonable effort in speed optimization of your code. To do that, I identify the simulation's bottlenecks and address them first by comparing different coding solutions against each other using benchmarking.
For speed gain, I am using these techniques wherever appropriate: 
 - banning for-loops
 - preallocate memory
 - collect garbage
 - parallelisation
 - outsourcing to C++
 - compiling functions
 - being lazy (my favourite)

I will use the following function as an example to show all those techniques.

	function() {
		rnum <- rnorm(1000, mean = 10, sd = 2) 

		h <- hist(rnum, plot = FALSE, breaks = seq(0,20,2))
			


## profiling and benchmarking (using the [package `rbenchmark`](http://cran.r-project.org/web/packages/rbenchmark/index.html))
http://adv-r.had.co.nz/Performance.html#performance
The `rbenchmark` package is a very nice tool to identify the bottlenecks of your simulation or to compare two pieces of code that do the same job. Basically, it is called like that:

	library("rbenchmark")
	
	benchmark( 
		first = {expr1}, 
		second = {expr2},
		replications = 100
		)

For finding the bottleneck in an iterative process, I just split it into all the sub-processes and put it into a `benchmark()` call.  
	
	benchmark

It is not an exact representation of the speed of the entire process, because return objects of the first process are required in the second. In the benchmark test, they are handled independently. But I assume it is a quite reasonable approximation. 


## banning for-loops (using vector operations or the functions `lapply()` or `sapply()` instead )

## preallocate memory

## parallelisation (using the packages `foreach` and `doSNOW` )


## outsourcing to C++ (using the package `Rcpp`)

Oh, this glorious `Rcpp`-package by Dirk Eddelbüttel and Romain Francois today is the "most widely used language extension for R". For R developers, it makes all the things happen that are slow or too difficult to solve in basic R.

## compiling functions
