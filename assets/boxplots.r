# boxplots
#
# for article: graphical parsimony
# published 08.06.2014
# by Florian D. Schneider
#
# Fig. 1 - Boxplots showing the median, the range of the inner 50% and the 
# upper and lower 25% of the y-values of the same random data (with means 
# ??A=2.2 & ??B=2.6 and standard deviations ??A=0.2 & ??B=0.6, n=50). a) The 
# default plot from the R base package uses differently defined line types 
# and widths (thick solid for median, solid lines for inner 50%, dashed 
# lines for outer quartiles). b) The original Tukey box and whisker plot 
# uses only one line style and omits the horizontal ends of the whiskers. 
# c) the Tufte version omits the box, since the range is already given by 
# the whiskers.
#


d <- data.frame(
  x = c(rep("A", 50), rep("B", 50)),
  y = c(rnorm(50, 2.2, 0.4), rnorm(50, 2.6, 0.6))
)


png("E:\\Eigene Dokumente\\Uni\\fdschneider.github.com\\assets\\boxplots.png", 
    width = 600, height = 250, antialias = "gray", bg = "transparent" )

par(mfrow = c(1,3), mar = c(3,4,2,2), cex = 1)


# R's default boxplot

plot(d, xlab = NA, ylab = NA, outline = FALSE)
text(-0.3, 3.8, "a)", cex = 2,xpd = TRUE) 

# Tukey's original box and whiskers plot 

plot(d, lty = 1, outline = FALSE, 
     staplelty = 0,
     boxwex = 0.4,lend = "square", # boxfill = "black",
     medlwd = 1#, #medcol = "white", medbg = "white", xlab = NA, ylab = NA
     )
text(-0.3, 3.8, "b)", cex = 2,xpd = TRUE) 


# Tufte's mid-gap plot

plot(d, lty = 1, las = 1, outline = FALSE, 
     frame.plot = FALSE, 
     boxwex = 0.4, boxlty = 0, boxfill = NA, 
     medlty = 0, medpch = 20, medcex = 1.4,
     staplelty = 0, lend = "square",
     xaxt = "n", yaxt = "n", xlab = NA, ylab = NA
     )
text(-0.3, 3.8, "c)", cex = 2,xpd = TRUE) 

axis(1, at = 1:2, labels = c("A","B"), tick = FALSE)
axis(2, at = c(1.5,2.5,3.5), las = 1, lwd = 0.5)


dev.off()
