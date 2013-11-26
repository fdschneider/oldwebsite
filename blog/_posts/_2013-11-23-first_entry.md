---
layout: posts
category: blog
title: How to use *git* 
---


First a few words in general about what git actually is and what it can do. I see two main purposes of it:

-	The very first purpose is **version control** of a project. This can be a piece of software or a written document, for example. As a developer or author you might want to keep track of your progress. Maybe you want to go back to earlier versions, because you somehow messed it up, or just because you liked it better. This ensures a continuous improvement of your project.

-	The second purpose is **collaboration**. Git allows you to share the whole project with others. It does track, who was doing changes on the project's files and is able to merge things together if the collaborators were working on different parts of the projects. 

- If you think about it, this is also exactly the thing you need if you are working from different computers, e.g. from work and from home. So we can add **synchronisation** to that list. 

*git* also helps with building up an organisational structure for complex software development. It is easy to work on different parts of the project at the same time and merge those so-called branches together afterwards. 


## basic functionality
This is only a collection of the most important tasks you will need. For more information see the excellent [Git Pro Book](http://git-scm.com/book) by Scott Chacon.

### everyday Workflow
The traditional way to work with Git repositories is to use bash / command line prompts. This allows you to do all the necessary steps like (1) pulling the recent copy of a remote repository to your local computer, (2) staging changed files to be commited to the repository, (3) commiting files to the repository (http://git-scm.com/book) and (4) pushing the changed repository back to the remote host. 


### once in a while things

First of all, there are different ways how you can obtain a repository on your local computer: Cloning an existing repository (somewhere online or elsewhere on your computer) or creating a new repository. 

#### Create Repository locally
After installing *git* (see below), you are able to spawn git repositories wherever you like. 


initial Push to remote 
Create the remote repository as bare directory

in your local repository, set a new remote 
git remote -v
git remote add workstation git@kefi118:~/repos/repository.git


#### clonging

_Cloning_

		git clone git@server:~/repos/repository.git
		


### Choose your Tool 
I am not  a command-line fan at all. It requires knowing your commands by heart, remembering your paths and filenames and stuff. Don't laugh, Git-Nerds! I am a biologist, not a programmer! My brain-space gives priority to real-life objects. To use GitHub, command line is mostly optional nowadays.
 
-  	**in Windows:**
	If you use a GitHub account to host your repositories, [GitHub for Windows](http://windows.github.com/) is a clean and convenient tool to use. It also installs a command line shell that includes all the Linux utility that is required for *git*, including `ssh` and nice merging tools for file conflicts. 
In my case, I was using *Cygwin* before for *ssh*. Combining git and *Cygwin*'s *ssh* is quite a challenge, because you need to tell the *Cygwin* programs, where your windows home directory is located. So i finally uninstalled *Cygwin* to run the much lighter shell. 
You also could use independent GUI clients which have more functionality. TortoiseGIT and MsysGit provide a nice integration in the explorer right-click menu, besides all the command line tools and GUI's that you know from Linux. 

	
-  	**in Ubuntu** (or other Linux):
	in any case you first will have to install *git*. 
	configure it.  http://git-scm.com/book/de/Los-geht%27s-Git-konfigurieren
	
	



Use GitHub as a hosting service 
-------------------------------
For me as a beginner, [GitHub.com](https://github.com) was probably the best way to get in touch with git's system of version control. GitHub is a hosting service that is free for private use. It provides you with an own git repository on their servers, which also means that the files are always savely stored in some immortal cloud storage. 
This of course means, that you have to register some personal data and leave your files with a US company. In terms of privacy, it does not matter too much in this case, since GitHub does not keep files private (unless you pay for it). Since GitHub is supporting open source development all files stored on it are freely accessible to anyone. If you use GitHub for free, you have to agree with that. GitHub does not make money out of adds or other dirty buisness with the data they keep for you. It makes its living only from hosting closed source developers and companies.

Once logged in, you can set-up and clone repositories online. Follow the tutorials. Its quite easy. You can start right away and create content online, via the build-in editor. The GitHub for Windows tool allows a quite easy integration in your everyday work. 

### Register
Visit the web page and set up an account. It only needs a username, a valid e-mail adress and a password. After the log-in you are guided through the first steps. There are plenty of video tutorials and manuals. 

Share a repository on GitHub
----------------------------


Share a self-hosted repository on a remote computer
----------------------------------------------------

This assumes, the git repo is stored on a Linux Computer. All developers will be able to access this repository via SSH to clone the repo, pull and push their changes.

I mainly followed the procedure given by [Kenn Wilson](http://www.kennwilson.com/notes/2013/08/self-hosted-remote-git-repositories/)

First install git

    	sudo apt-get install git

Then we set up a new user called *git* to manage the repository. This user won't have any rights on the computer except the ones required for this purpose. The contributors to the git repository will be using SSH to authenticate to this user, so he allows them to work.

     	sudo useradd -m -d /var/git -s /bin/bash -c 'Git' git

What else does this command do? It creates a user (`useradd 'Git' git`) and creates (parameter `-m`) and locates (`-d /var/git`) it's home directory and sets *bash* to be the command-line interpreter for this user.  

Next step is to give your user *git* a list of people who are allowed to enter. This is done via SSH-keys. The users have to generate them on their own computers running

     	ssh-keygen -t rsa

You will be asked for a name and location of the key. When hitting enter, the default key-pair `id_rsa` and `id_rsa.pub` is stored in your users directory `~/.ssh/`. Next, you will be asked for a password to protect the key pair. Don't provide one here !!! SSH is a secure way to communicate without an extra password. The assumption is, that the private key is so safely stored on your own computer, so nobody else except you, the owner, can read it. We will take care of this in a second. 
That is, why once the key pair is generated, you set the read & write permissions of the private key:

    	chmod 0700 ~/.ssh/id_rsa

The public key `id_rsa.pub` does not need special protection and now can be copied to the server and into *git*'s authorized keys list, which we have to generate in the first place.

    	mkdir ~/.shh
     	touch ~/.ssh/authorized_keys
    	chmod 700 ~/.ssh
		
This is `mkdir` creating a directory where ssh is looking for keys by default. `touch` creates the empty `authorized_keys` file. We already know `chmod`, this sets the permissions for the folder to be read and changed only by the user *git*. 

Now, the local users - the developers - will be able to access the server as user git by typing one of

		ssh git@*server*
		ssh git@*IP-adress*

without beeing asked for a password. If this does not work, git will not be able to pull or push stuff from there. Particularly for Windows clients, some extra work might be necessary. But also on the server side, some issues occured in my case when I was setting up apache2 to run a gitlist representation of my repository. 


