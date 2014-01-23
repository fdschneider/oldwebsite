---

title: Pushing R to the max
author: Flo
date: 
teaser:  
---

When running stochastic simulations with many iterations, there is a need for speed. The beloved statistical language R provides a simple syntax and a wealth of packages, but it is known to be slow. Several attempts to speed up the basic core functions of R were made, but they never made it in the base package. [Brian McGill has written a note on that topic at *Dynamic Ecology*](https://dynamicecology.wordpress.com/2014/01/14/r-isnt-just-r-anymore/). However, like many of the commenters on Brians post, I guess the add-on package approaches described by Brian are helping but the actual problem is not tackled by it. The actual problem is bad programming style. 

It is important to keep in mind that the slowest part of computational science is the development of the code itself. It takes quite much time to figure out 1) what you want the code to do and 2) how you make the code to do it. R is targeting on optimising this development time by providing a simple structure without preallocation and such and a quite logical syntax with many logical shortcuts. Short: programming in R is so easy, that it is speeding up the entire process of computational work[^1](See [Hadley Wickham's webbook on Advanced R programming](http://adv-r.had.co.nz/Performance.html)). So not every task requires a good programming style targeting on high computational performance. 

However, for my projects, I program very intensive simulations in R. Speed does matter for me. 

In my opinion, the best way is to put a reasonable effort in speed optimization of your code. To do that, I identify the simulation's bottlenecks using benchmarking. The slowest processes are optimised first. To achieve speed gains, I am mostly using one or several of these techniques wherever appropriate: 
 - banning `for() expr` and `apply()`
 - preallocate memory
 - collect garbage
 - being lazy (my favourite)
 - compiling
 - parallelisation
 - outsourcing to C++

I will walk throug them using the following function as an example.

``` R
	# get patch size and patchsize distribution
	patches <- function(x, state, cumulative = TRUE) {
		pattern <- x$cells
		pattern <- pattern %in% state
		map <- rep(NA, times = prod(x$dim))
		old <- rep(99, times = prod(x$dim)) 
		
		while(!identical(old[pattern], map[pattern])) {
			old <- map
			count = as.integer(1)
			for(i in which(pattern)) {
				neighbors <- map[x_with_border][x_to_evaluate[i]+interact]
				if(all(is.na(neighbors)) ) { 
					map[i] <- count
				} else {
					map[i] <- min(neighbors, na.rm = TRUE)
				}
					count <- count +1
				}

			}
		
		map <- as.factor(map)
		patchvec <- as.vector(sapply(levels(map), function(i) length(which(map == i) ) )) 
		
		out <- vector()
		if(length(patchvec) > 0) out <- sort(patchvec) else out <- NA
		#out <- data.frame(size = unique(out), freq = sapply(unique(out), function(i) length(which(out >= i)) ))
		return(out)
		
		} 




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


## lazy evaluation

Particularly when working with numerical simulations over time, where every timestep depends on the step before, you usualy need to run simulations into some kind of equilibrium. 


## outsourcing to C++ (using the package `Rcpp`)

Oh, this glorious `Rcpp`-package by Dirk Eddelbüttel and Romain Francois today is the "most widely used language extension for R". For R developers, it makes all the things happen that are slow or too difficult to solve in basic R.

## compiling functions

The package *compiler* is very simple to use and can speed up some functions by factor 3-5. 

	library("compiler")
	
	f <- cmpfun( function(...) {...} )
	
	
	