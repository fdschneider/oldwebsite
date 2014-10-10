---
layout: posts
title: lablog - a Jekyll template for lab notebooks
author: Florian Schneider
date: 10/10/2014
teaser: I was looking for a while for a way to document my progress, build a knowledgebase and structure and manage projects.  Most classic Wikis do only part of that job. So I just put together a nice way to keep a personal (or collaborative) lab notebook using the static site generator [Jekyll](http://jekyllrb.com/).
---

One of the problems with wikis was, that I wanted a chronological documentation of progress. That is an important feature of a lab notebook, since it allows to trace the development of an idea much better than a wiki which only shows the current status of thought.

> Researchers use a lab notebook to document their hypotheses, experiments and initial analysis or interpretation of these experiments. The notebook serves as an organizational tool, a memory aid, and can also have a role in protecting any intellectual property that comes from the research.

says [Wikipedia](https://en.wikipedia.org/wiki/Lab_notebook)

![
English: Pages 40-1 of Alexander Graham Bell's unpublished laboratory notebook (1875-76), describing first successful experiment with the telephone.
](https://upload.wikimedia.org/wikipedia/commons/0/0c/AGBell_Notebook.jpg)

*Pages 40-1 of Alexander Graham Bell's unpublished laboratory notebook (1875-76), describing first successful experiment with the telephone. Source: [Wikimedia Commons](https://en.wikipedia.org/wiki/File:AGBell_Notebook.jpg)*


So I started to build a [Jekyll template and released it on GitHub](https://github.com/fdschneider/jekyll-lablog) which adds functionality that facilitates

- writing of daily logs
- collecting and linking information
- drafting of articles and essays
- building a knowledgebase

Basically, you write simple text files that are automatically turned into a very clear website.

Find the [demo here](https://fdschneider.github.io/jekyll-lablog/index.html).
I invite you to [download it from GitHub](https://github.com/fdschneider/jekyll-lablog) and check it out for your own use and tell me what you think.


### Features:

- **Todo Lists** using the GitHub syntax `- [ ]`.
- **Tags** allow you to link posts of a certain topic, project or field of interest. Buttons for the **next and previous post** and automatic linking to **related posts** based on common tags facilitates browsing through posts.
- **Post Archive** is a chronological list of all posts, which is perfect for the use as a lab diary.
- **Multi-authoring** for entire research groups due to an `author` tag in the front-matter
- **log your geolocation** with the `place` parameter
- **math equations** using [mathjax.org]() (renders $ \LaTeX $ syntax).
