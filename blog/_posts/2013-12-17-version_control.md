---
layout: posts
title: Quality control in computational ecology
categories: computer, practice, science
author: Flo Schneider
teaser: In ecology and biology in general, computational methods are omnipresent nowadays. Still, few biologists do have a professional training in programming. Our standards are quite far from what is considered good practice in computer science and informatics.
---

Triggered by a workshop on ["what makes good code good" with Mike Jackson at the INTECOL 2013](http://www.software.ac.uk/blog/2013-08-23-what-makes-good-code-good-intecol13) and an unpleasent revelation of errors in one of my own projects, I started investigating options for quality control in computational ecology. 

Recently, the issue is hotly debated in the scientific community. In June 2013, [Carl Boettiger](http://carlboettiger.info/2013/07/09/reviewing-software-revisited.html) initiated a discussion on his blog on how scientific software should be reviewed. It made it into [scientific journals](http://www.nature.com/news/mozilla-plan-seeks-to-debug-scientific-code-1.13812) and prompted an initiative by the [Mozilla Science Lab](https://wiki.mozilla.org/ScienceLab) that aims on installing a review platform for scientific code. 

## My goal
My current research is predominantly theoretical, but sometimes combines empirical data with simulations. Mostly, I use R for statistical analysis and simulations. I would not consider myself a software developer, but the code of a simulation project can easily grow to a thousand lines.

I intend to implement three stages of quality control in my future computational work:

-	internal review during development: In the process of development, the computer code for ecological simulations is constantly growing, functions are externalised and the code is run repeatedly in different configurations for testing and exploration. Certain parts of the code are well suited for a review and testing by a colleague associated to the project. This demands clean coding and proper documentation. 
- 	pre-publication: When the project draws to a close and the simulation results are wrapped up in a manuscript, the final code should be reviewed in depth. Even better would be to ask a colleague not directly associated to the project to reproduce the results with the details provided in the manuscript. Besides proving the functioning of the computer code, this also would be a litmus test for the description of the methods in the manuscript. 
-	post-publication: I want to practice an open code policy and publish the code with the paper in a well documented form. This allows other researchers in the field to follow and reproduce the simulation or statistical analysis in full detail. Any mistakes could easily be revealed. This would reduce the chance of invalid conclusions being propagated.

This sounds like hell of extra work. However, there are some tools that can be used to aid and structure that process. 

## Version control to the rescue
A means to achieve these is the consequent utilisation of version control tools such as [git](https://git-scm.com/) or *subversion*. These little pieces of software keep a register of the files you are working on and track all changes. At the cost of very little extra effort in your everyday workflow, this brings the following benefits:

- 	**clean working directory**: well, you might already do your manual versioning by keeping a collection of files in your working directory that reads something like this: 

		simulation.cpp
		simulation_v0.1.cpp
		simulation_v0.2.cpp
		simulation_v0.2.1.cpp
		simulation_in_review.cpp
		simulation_messed_up.cpp

	You also might have several copies of the code file in differently named directories. You might have made some little changes to the file in each of them. This clutters your project's working directory. Version control makes this redundand since the software keeps track of your work now. It allows you to make changes to your main code file and return to a previous version anytime you want. You even can keep several branches of that single code file. Still, there is only one file found in your working directory called `simulation.cpp`.
- 	**code safety and progressive development:** Certainly it happened to you that you helplessly messed up a previously running version of your piece of code. An accidentally overwritten file could even compromise the supposedly secured copies on your cloud storage or backup drive. With version control, if some development did not work out, you will always be able to go back to the last running version and start afresh. While doing so, you even could choose to keep those parts of your unsuccessful exploation that were actually not so bad. This saves a lot of frustration and makes the code development more progressive, conserving the good parts of your development while beeing able to undo the bad ideas.
- 	**project progress documentation:** Since version control does not only track the main code file, but also your result files, generated figures and manuscript files, if you let it do so, the timeline of changes is a perfect documentation of the projects progress. Additional information can be added by setting tags to certain versions of the project or by complementing the code with a documentation file, itself versioned as part of the project.  
- 	**backing up:** The nature of version control tools like git allows to clone backup copies of the whole project directory to a remote server, a cloud storage or a usb drive. The perfect protection against technical problems on your main computer. Just clone your work. 
- 	**collaboration and file syncing**: This feature also can be used to sync your files between your own computers or share them with colleaques for collaboration or review. It allows you to keep track of the changes made by each of the involved collaborators and reviewers.  
- 	**publishing**: Whenever your project is fit for going public you can easily clone your whole work, including the development history, into a public hosting service, such as [GitHub](https://github.com). Here, everybody could review your code or manuscript before final submission or after the project is published. With a little work you can set up a semi-public repository on an own server with access management. 

## The human factor
The problem seems to be that the major part of the quality control work, the review, can not be done by software. I will need to ask for help of colleagues in my own working group and elsewere. In ecology, few researchers are familiar with version control and with git in particular. So, for collaborations I cannot insist on the use of some particular version control system to organise the internal review. I can encourage my colleagues to give it a try but if they prefer to exchange files via e-mail or to track changes on manuscripts in word files, I will have to yield. The review itself has priority here.

Furthermore, not everybody feels comfortable seeing the data and code of his project publicly available.  I will need to convince my collaborators that these principles are making a better science in the long run. The main objections are, that some projects are run with very elaborate code, used in other projects still unpublished. Simulation code can be considered the technological know-how of a working group. Further, some minor technical bugs might remain undiscovered and be inherited and take big effects when the code is re-used for other purposes. Making code freely available also bears the danger of spreading those errors.

## Try
Nonetheless, I want to try implementing version control using [git](https://git-scm.com/) to achieve a better quality control of my work. The more researchers in computational ecology are joining, the easier it will be to make scientific conlusions more objective and reliable, to make science better.