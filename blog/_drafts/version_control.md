---
layout: posts
title: Quality control in computational ecology
tags: 
 - computational ecology
 - best practice
---

In ecology and biology in general, computational methods are omnipresent nowadays. Still, few biologists do have a professional training in programming. Our standards are quite far from what is considered good practice in computer science and informatics.

Triggered by a workshop on ["what makes good code good" with Mike Jackson on the INTECOL 2013](http://www.software.ac.uk/blog/2013-08-23-what-makes-good-code-good-intecol13) and an unpleasent revelation of errors in one of my own projects, I started investigating options for quality control in computational ecology. 

Recently, the issue is hotly debated in the science community. 
http://www.nature.com/news/mozilla-plan-seeks-to-debug-scientific-code-1.13812

http://carlboettiger.info/2013/07/09/reviewing-software-revisited.html

My current research is predominantly theoretical, but sometimes combines empirical data with simulations. Mostly, I use R for statistical analysis and simulations. I would not consider myself a software developer, but the code of a simulation project can easily grow to a thousand lines.

I intend to implement three stages of quality control in my future projects:
- internal review during development: In the process of development, the computer code for ecological simulations is constantly growing, functions are externalised and the code is run repeatedly in different configurations for testing and exploration. Certain parts of the code are well suited for a review and testing by a colleague associated to the project. 
- pre-publication: When the project draws to a close and the simulation results are wrapped up in a manuscript, the final code should be reviewed in depth. Even better would be to ask a colleague not directly associated to the project to reproduce the results with the details provided in the manuscript. Besides proving the function of the computer code, this also would be a litmus test for the description of the methods in the manuscript. 
- post-publication: I want to practice an open code policy and publish the code with the paper in a well documented form. This allows other researchers in the field to follow and reproduce the simulation or statistical analysis in full detail. Any mistakes could easily be revealed. This would reduce the chance of invalid conclusions being propagated.

## Version control
code safety, backing up, clean working directory
project progress documentation, tagging 
enabling progressive development, 
writing, collaboration

branching of any use? usually linear project development. Tags are powerful.

## exploring
was using subversion, now using git, 

