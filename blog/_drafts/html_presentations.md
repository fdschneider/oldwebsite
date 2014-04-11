---
layouts: post
date: 
author: Flo Schneider
teaser: 

---

# Presenting in html

Well, it is already some years that I left Power Point behind me. The typography is so horrible. It just sucks. Open Office is not much better and the templating felt even worse than in Power Point the last time I tried it.  

Instead I was using Adobe InDesign to create pdf presentations which is a very comfortable way to maintain perfect templates over all slides, make use of paragraph and letter styles, embed vectorised figures. But it costs a fortune. And Adobe is changing it's policies. They don't sell software anymore, just licences. And that sucks as well.

Then there would be LaTeX Beamer class, which requires quite some coding. The script files for making templates are not realy human readable and intuitive. 

This is why for my next presentation I wanted to try a html and css based solution that runs in the browser. It requires coding as well, but the formatting via style sheets is much simpler and more flexible than it is in LaTeX. 

A couple of weeks ago, I researched about the possible solutions. There are a couple of scripts and some even have convenient editors to create the presentations. But in the end I narrowed it down to those scripts that work with pandoc. Why that? 

Well pandoc is a multifunctional converter, mainly from Markdown to any other text based format. Today, Markdown is probably the closest possible approach in separating content from layout and that's why I started to love it in the last couple of months. Pandoc is a converter that provides everything a researcher needs: Markdown rendering plus Tex Math, Syntax highlighting and output generation into LaTeX, Html or even Word. And best of all, John Macfarlane, the author of pandoc, was so thoughtful and included multiple output generators for html based slides. 

In sum that makes a tool that allows you to write lectures and talks in almost plain text. You can create beautiful presentations and -- from the same input -- complementary lecture scripts and handouts.
 


## My choice: DZSlides

## Issues with pandoc
--template for dzslides

I tried to customize my markdown --> dzslides output. 

`--css` seemed to work `-o dzslides` but is does just link to the .css file instead of keeping everything in one html.
The only way I found to change the default css was to use the option `--include-in-header` or `--include-after-body` to embed additional script, which is creating quite some redundand code in the output html file. The limitation of that is that I can't customize the core.

First, I thought it could be possible by overwriting `/data/dzslides/template.html` and as a workaround just copy the desired template to that location before I run the parser. But I am on Windows and can't access the pandoc binary. Apparently, the only possibility to customize it is after parsing, which is not very convenient.

But couldn't pandoc allow for re-specifying the template that I want to use by the option `--template`? When I tried 

       pandoc -s -t dzslides --template=custom.html -o presentation.html mymarkdown.md 

It just returns a copy of the custom.html file but crops it quite arbitrarily.

I have no idea how difficult it would be to implement the use of `--template` for dzslides, but it would be a very powerful feature to make simple but impressive html slides from markdown.


## The default template


## Customizing
