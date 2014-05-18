---
layout: posts
title: Graphical parsimony
categories: graph, science
teaser: I recently got myself the books of Edward Tufte. His publications are said to have revolutionised visual communication. At least that's what graphic designers say. Some of his principles made their way into scientific graphs as well. But they are far from being universally applied. Why is that? And how to change it in your work?
--- 

For researchers, a major part of their work actually is communication. I mean, all scientists are well aware that they very well have to publish articles. And, they are aware that they have to make them to have an impact. This is  only achieved if they succeed to communicate. 

Good writing is one thing. But the complex results in science can not be transported by language alone. In research papers, figures do a good part of the job. But in most cases, they do a bad job.  

As a fundamental critique to the practice of graphical communication Edward Tufte published this series of books, where he elaborated on why graphics fail at being informative and -- more importantly -- being honest.

- [*"The Visual Display of Quantitative Information"*, (1990, 2nd Edition 2001)](http://www.edwardtufte.com/tufte/books_vdqi)
- [*"Envisioning Information"*, (1990)](http://www.edwardtufte.com/tufte/books_ei)
- [*"Visual Explanations: Images and Quantities, Evidence and Narrative"*, (1997)](http://www.edwardtufte.com/tufte/books_visex)

All published by Graphics Press, Tufte's own publishing house.

The first one 

The second and third elaborate on verbs and nouns

Hardly any software for plotting statistical graphs, be it R, gnuplot, Matlab, or Excel, applies this rule. This is of course because they have to stick to cultural conventions, for instance on what a box in a boxplot means. But also because they try to pose their own style on the generated output, so everyone sees this piece of science was done with their software. 

That is why I find that whatever software one uses to generate research graphics, it is indispensable to **adjust the graphical display to the needs of the data**.

My idea is to write a series of posts to summarize the points that I found extremely useful for visual communication in research, starting today with the concept of graphical parsimony.

## Maximise the data-ink ratio

In descriptive statistics and modeling, researchers know the principle of Occams razor: To describe a thing, use as few elements as possible and as much as necessary. 

Tufte applied this to data plots in a very consequent way and condemned unneccessary figure elements, shadings, lines, labels, marks and decoration. He explored ways of reducing the axis or the lines that are required to give the actual information.

To quantify that he constructed the **data-ink ratio**, the proportion of ink used to plot actual information, opposing to the ink that does not. Since the people designing graphics usually do not concern themselves with measuring the actual ink that is required to plot them, and since todays graphics are mainly viewed on screen and not on paper, the metric is quite arbitrary and impracticable in my eyes.

The point Tufte wants to make is still valid: remove anything that does not contribute to the message. Start from a blank screen and add as much graphical elements as necessary, in a most simple way, but nothing else.


## Example: The boxplot

One example Tufte uses is the boxplot, which was invented by John W. Tukey. See here, the originally suggested version by Tukey and the minimalised solution of Tufte, the so called mid-gap plot. In contrast, the default in R using a combination of dashed, short and long, thin and thick lines and boxes. 

![](/assets/boxplots.png)
<figcaption> Fig. 1 - Boxplots showing the median, the range of the inner 50% and the upper and lower 25% of the y-values of the same random data (with means $ \mu_A = 2.2 $ & $ \mu_B = 2.6 $ and standard deviations $\sigma_A = 0.2$ & $ \sigma_B = 0.6 $, $n = 50$).  a) The default plot from the R base package uses differently defined line types and widths (thick solid for median, solid lines for inner 50%, dashed lines for outer quartiles). b) The original Tukey box and whisker plot uses only one line style and omits the horizontal ends of the whiskers. c) the Tufte version omits the box, since the range is already given by the whiskers. </figcaption>


Tufte argues that the four lines around the box, which depicts the range that includes 50% of the data, are completely redundant. They can be removed, because the range is already given by the ends of the whiskers. 

But here is some critique: A box in a boxplot carries information, *because* it is a box. There is a social convention that makes the reader understand that the box *includes* the actual data that are not depicted here. In contrast, the mid-gap plot suggests this range is somehow *empty*. 
Finally, plotting the box allows a more accurate estimation of the range of the inner 50% by the observer [^1]. 

Still, you might have observed that in Tufte's version of the plot also the box around the plot and the axes are reduced to a minimum. They certainly do not contribute to the information carried by the graph and must be removed. Also, he pleas for plotting axis labels horizontally, because it causes less distraction. 

The use of color follows the same rules. 

So, keep in mind that **starting from a blank screen**, each additional element of a graph (like lines, points, areas) and each element definition (like line width, line type or color) need to be justified by providing additional information.

- Boxes around the graph or a background color are in most cases not providing information. They might, if the graph is limited by the domain of investigation or simulation. 
- Filling some element with color would be an additional definition. It would only be justified if it can be used to distinguish different kinds. For boxplots this is not necessary, since they can be labelled on the x axis. Many different point types or 
- A line in the first place is a solid line of the default linewidth. Making it dashed or interrupted is distractive. Making it colored is only justified if it is 


## Concluding remarks



[^1]: [William A. Stock and John T. Behrens (1991) Box, Line, and Midgap Plots: Effects of Display Characteristics on the Accuracy and Bias of Estimates of Whisker Length, *Journal of Educational Statistics*, Vol. 16, No. 1, pp. 1-20, doi: 10.2307/1165096](http://www.jstor.org/stable/1165096)

