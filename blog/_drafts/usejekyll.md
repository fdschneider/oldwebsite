---
layout: posts
title: Building my website with Jekyll 
author: Flo
date: 
categories:
teaser:  You'll  probably find as many manuals for how to set up your website with Jekyll as you find websites set up with Jekyll. Apparently everybody who tried that fabulous simple static site generator feels the urge to write down how it was done. I admit, I can't resist. So, this post is not for you readers, but for my own records. No warranties. 
---

For me, this was quite hard, since I am not a linux native. The language and information of all the manuals out there was by far not sufficient for a poor **Windows user** like me, even if Linux basic knowledge is at hand. I take it as a challenge. 

I try to document here how it worked out for me. 

Blogging via GitHub is very different from other blog hosting services. First of all, because GitHub is not a blog hosting service. I tried Wordpress.com and Tumblr before. Probably the most challenging part was to choose the template for the blog and to understand all the buttons in the back-end. And to stop it doing things that I didn't want it to do.

Now GitHub is a service which in the first place hosts project repositories. This is meant for programmers who develop computer code and want to keep track of all the changes they make. 



## Install jekyll on Windows for local preview

I did it following [Bradley Grainger](http://bradleygrainger.com/2011/09/07/how-to-use-github-pages-on-windows.html): 
	1. I downloaded [Rubyinstaller version 1.93](http://rubyinstaller.org/downloads/) and installed it into a folder `C:\Ruby\Ruby193`. The directory should automatically be added to your PATH variable. You might need to restart your Bash/Terminal/PowerShell.  
	2. Download and extract the matching [Rubyinstaller Devkit](http://rubyinstaller.org/downloads/) into `C:\Ruby\devkit\` and installed it. To do so, I needed to initialise the devkit first: 

			cd C:/Ruby/devkit
			ruby dk.rb init
			ruby dk.rb install
	
	3. Installing jekyll. That was very easy after setting up ruby properly. Just type
	
			gem install jekyll --version "=1.4.2"
			
		downloads and extracts the programm. Version 1.4.2 is chosen to avoid a problem of compatability with (did not really get that). 
	4. Download and install Python Windows Installer (2.7.6, in my case) into `C:/Python27/`.
	5. Add the `C:/Python27` directory to your PATH variable.  You might need to restart your Bash/Terminal/PowerShell. 
	6. Then you'll need the setuptools for Python by downloading the `ez_setup.py` to your Python folder. Then go there and run it. 
		
			cd C:/Python27/
			python ez_setup.py

	7. Add the `C:/Python27/Scripts` directory to your PATH variable.  You might need to restart your Bash/Terminal/PowerShell. 
	8. Install kramdown as Markdown interpreter. It is providing nice footnotes, which the default Maruku doesn't. 
	
			gem install kramdown
	
	
## initialise the blog structure using jekyll-bootstrap 

Here, I followed the quick start instructions on the [Jekyll manpage](http://jekyllbootstrap.com/usage/jekyll-quick-start.html)

I got stuck, however, at the final step: pushing the repository back online. Trying that gave me an error message ().  This is a serious issue with open ssh running via Cygwin, as it is on my computer: Cygwin stores it's private and public ssh keys in a "virtual" home directory. This is beacause the fancy bash programms require the Linux filesystem and structure to work. This home directory is ideally stored in 'C:\cygwin\home\*user*'. The consequence is, that ssh works fine if it is running in the Cygwin bash, but not if you are working in the Windows CMD Terminal. Even if CMD has all the Cygwin programs available via an entry of the cygwin path ('C:\cygwin\bin;') in the Windows PATH variable, it does not know where to find the ssh keys.
 http://imikay.wordpress.com/2011/08/06/ssh-add-could-not-open-a-connection-to-your-authentication-agent-on-windows/  
 
The problem arises, whenever you try to push (sync) git repositories from your computer in your github.com repositories online. This writing access to github.com requires authentication via ssh. In Linux this is nicely done automatically by your git, gitk etc. tools. In Windows, you get stuck because your files are situated outside the virtual cygwin file structure. So, you need to go there via Windows CMD. This, however, disables ssh to find your keys (see above).

http://www.linux.org/threads/file-permissions-chmod.4094/

The solution is a re-definition of the home directory, by setting a new environment variable HOME.  
 http://superuser.com/questions/397288/using-cygwin-in-windows-8-chmod-600-does-not-work-as-expected
 
No? The ssh key is not found. To finalize it, I had to create a new ssh key pair. set it into my cygwin/home/username/.ssh directory. constrain the permissions for the private key, which again is tricky in windows. chmod 600 id_rsa fails to make any changes of the group rights. Windows does oes not know the same permissions as the linux filesystem. ls -l shows you that the file is owned by no group. Thus, the group permissions can not be changes. This can be solved by assigning a group to the files  . finally, you should be able to run chmod 0600 id_rsa with the intended effect: changing the permissions to -rw---- which means, reading and writing for owner of this file, but nobody else. 

Well, the ssh connection works now, as a simple 'ssh git@github.com' login proofs. 
However, when I tried to push the cloned jekyll-bootstrap repository online by running 'git push origin master' inside my jekyll folder, GitHub complained about the conflict with the existing repository.

Finally, a forced pushing using 'git push -f origin master' works. It overwrites all the content in the basically empty repository. And after a few minutes, the pages were online under username.github.io



## failed attempt: install Jekyll for local preview

To view your site offline in your computer you need to run Jekyll locally. Once again, this is a non-trivial task under Windows. Many *Howto*'s[1](http://bradleygrainger.com/2011/09/07/how-to-use-github-pages-on-windows.html) suggest the use of the Rubyinstaller, to set up Ruby on your Windows system, but requires installation of a Ruby Devkit which provides your Windows with tools like 'g++' and 'make'. If you have these already available, e.g. via an installation of **Cygwin** and an entry in your PATH Variable, then using Rubyinstaller and the Devkit is not advisable. 
   
So, I basicly followed [Matt Scharley's HowTo](http://matt.scharley.me/2012/03/10/windows-cygwin-and-jekyll.html) for installation of Jekyll in the cygwin environment.

First, check if your Cygwin has the following tools installed by running cygwins setup.exe: 
	gcc; gcc-g++ ; git; make
    libiconv ; libiconv2; zlib
    curl

Then, you need to install RVM 
	
	curl -L https://get.rvm.io | bash -s stable --ruby
	source ~/.rvm/scripts/rvm

The last step is installing posix-spawn from source, because Cygwin somehow is not able to install it directly. This worked well for me:

	gem install rake-compiler -v 0.7.6
	git clone git://github.com/rtomayko/posix-spawn.git
	cd posix-spawn
	rake gem
	gem install --local pkg/posix-spawn-0.3.7.gem

Then, finally, I could install Jekyll.

	gem install jekyll
	

# 2nd try
Yes, that first description is a bit messy and not very easy to reproduce. Actually I learned a lot about Windows while trying this. The one thing I learned: Cygwin is not as comfortable as it seems, because it is not compatible with the Windows folder structure. Everything you do happens within a simulated Unix environment. However, your Git repositories are Windows folders, stored somewhere in your regular filesystem. You need to run the git programs from these folders. This is working once you registered your cygwin/bin folder into your PATH variable in Windows. However, some Cygwin programs use the virtual Unix environment to find their things, such as SSH. Messy. 

I decided to set up my Windows computer without using Cygwin. The following tasks require some Linux-like programs that indirectly make use of command line prompts.

	- running parallel calculations with snow and foreach in R
	- integrating functions written in C in a program written in R using the package Rcpp
	- creating animated graphs with the package ´animation´ in ´R´
	- accessing a remote computer via ssh
	- using git command line prompts 
	- running Jekyll locally to preview my website
	- compiling LaTeX
	
For each of these tasks solutions exist on the internet in form of nice tools that can be installed and that provide the whole functionality. 

http://www.norberteder.com/blog/post/Jekyll-unter-Windows-einrichten.aspx
http://www.madhur.co.in/blog/2011/09/01/runningjekyllwindows.html
http://carlboettiger.info/2012/12/30/learning-jekyll.html
	
	