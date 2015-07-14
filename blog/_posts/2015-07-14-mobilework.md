---
layout: posts
title: Thoughts on mobile work
author: Florian Schneider
date: "2015-05-14"
teaser: 'After two years in Montpellier my PostDoc for the CASCADE project draws to an end. Three months left to finish pending tasks, write publications and attend a meeting on Crete. Luckily, I was able to extend my contract until August with the unique opportunity to explore a new working concept: part-time, mobile and home-office work.'
comments: true
disqus_identifier: 3388872878
---

After one and a half years of living apart from my partner, I decided to go on a 70% position at the benefit of working in home office and on multiple work places. I am also curious about exploring co-working spaces, or working in one of the nice cafés in town.

![](/assets/img/homeoffice.jpg)

*My office on a sunny day: the small yard of my house is full of plants. There is my own Wifi and coffee or tea as much as I want.*

All this is great. But still I need to have a functional computer set-up that is capable of that mobility.

## change a running system

I used to work on a powerful Dell desktop PC and a small mobile device, a Lenovo Tablet with a full Windows 8 running, which I use for reading, taking notes during seminars and conferences and mobile work on the train. At home, I use a less powerful desktop PC, running Windows 8.

Since the PC at the office is heavy as hell and way to expensive to carry around, I chose to switch to our shared working group laptop computer, which used to run a Windows 7 installation with multiple users. As I have to move to another setup anyway, I chose to take the opportunity to migrate from Windows to Linux based work.

It all boils down that I had to reconfigure my entire workflow in the new environment: make data and project directories available on all devices, install software for writing and compiling code and text on Linux, including bibliographic tools, transfer e-mails and web-browser bookmarks. After three months I am still not done with making all the details work although I believe I was quite well prepared. I did my backups!

## File-syncing is not optional

Many of my colleagues are working only on laptop computers since they want to have their setup with them wherever they go: in the office, at home, on conferences, when visiting collaborators etc.. This implicitly says that they prefer this setup *because* they don't want to bother with everyday file syncing. This is convenient, but it also takes away the pressure of maintaining a continuous backup infrastructure. That is to say, if you work on a single mobile device all year round, you *should* worry about data loss and thus find a way to keep everything you do synced to a backup drive or cloud service.

Well, today Dropbox and Co. solve this problem for you at little cost and effort. However, some universities in Europe banned the use of US-based cloud hosting, and Dropbox in particular, because of security concerns. Universities offer their own fileservers, but they are often clumsy or do not allow public file sharing or inviting non-university members. And what if you move to another universtiy? Thus, there is hardly anyone who actually drops Dropbox entirely. However, there are some european filehosting services that have higher privacy standards, but also are much more expensive (e.g. Wuala).

In the past year, I tried a couple of alternatives: I share an [Owncloud](https://owncloud.org) instance with some friends, which is  inexpensive but requires quite some maintenance. I use it mainly for private data, not for work-related stuff. For work, I tried syncing my folders to a file-server plugged in 24/7 (Raspberry Pi B with a 2TB hard drive) using Bittorrent Sync, which produced many file conflicts in my case. I finally abandoned it after their upgrade to version 2.0 that came with only limited functionality in the free version and ridiculous prices for the pro version. I tried a low cost NAS (a SAMBA server running on my Raspberry Pi) but this does still require setting up an automated syncing for all my devices (using FreeFileSync](https://www.freefilesync.org/) and additional CalDAV & CardDAV servers) and it is only available in my local network, unless I get a fix IP or a DynDNS service. Also, this does not protect me against hardware loss since I do not keep incremental backups or mirrors of my backups. Other ways could be syncing to a professionally configured NAS server at home or at the office (e.g. by Synology). Those pre-configured solutions can provide RAID backups. They have intuitive interfaces, but they can be quite expensive in terms of money and energy consumption.

What other alternatives for file-syncing are people using? I would be grateful for suggestions.

In the end, all these tools do not help in systematically organizing all the files attached to a project. It is easy to miss syncing a folder or file, because it is stored in a different place or was too big to sync. Accidents happen, like overwriting  or deleting a file and lose it on all my synced devices. If working offline for a while, I might get file conflicts which are difficult or impossible to resolve on binary files (like word docs or photoshop files).

That is why the most efficient way of syncing files for me after all is using the git version control system and hosted online repositories.

## sync your files *and* your workflow!

Using git was a real game changer since it allowed me to structure my working directories in a much simpler way  by using tags and branches to save different file versions. Any changes to my files are now recorded in a version history which is instantly synced to a remote repository hosted on [GitHub](https://github.com/fdschneider) or on our university's [GitLab](https://about.gitlab.com/) installation. Whatever computer I use, I get the most recent changes from the server, modify them, and then sync them back to the server.
Even if I get out of sync, because I don't have internet access or I forget to click the 'push' button, I will not mess up things. The version control merges file conflicts, in most cases without complications.

This workflow is so amazing that it made me abandon word processing software and move to scientific writing in pure text files using Markdown syntax. Tools like [pandoc](http://pandoc.org/) or the [Rmarkdown package for R](http://rmarkdown.rstudio.com/) allow to convert these files into .pdf or word .docx files any time I need them. The big difference to word files is that those text-files can be put under version control with all the benefits of frequent syncing, easy merging etc. that I was mentioning before.

To conclude, I would say that workflows build around a version control system are much easier to sync than classic workflows. Solving conflicts between word files is much more effort than syncing pure text files using a version control system. Keeping track of different versions is a generic feature of version control, while you have to manage that on your own in Word. Finally, version control greatly facilitates collaborative work on the same files at the same time.

## how does it work in real

Still, if changing to another computer setup, all the software needs to be installed: git clients, code and text editors, R, latex compilers, pdf-viewer. But, unlike MS Office, it's all open source and free. My workflow uses lightweight software most of which can run from a USB key without installation.
I want to make a case for a platform independent and mobile approach that allows me to become independent from a single computer, mobile or not, and from proprietary software. I believe the solution for being device-independent is not solved alone by syncing files. It is the entire workflow that needs to be synced.
