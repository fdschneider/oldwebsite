d <- data.frame(
  x = c(rep("A", 50), rep("B", 50)),
  y = c(rnorm(50, 2.23, 0.4), rnorm(50, 2.63, 0.62))
)


png("E:\\Eigene Dokumente\\Uni\\fdschneider.github.com\\assets\\boxplots.png", width = 550, height = 200, bg = "transparent" )

par(mfrow = c(1,3), mar = c(3,3,2,4))


# R's default boxplot

plot(d)
text(-0.2, 3.8, "a)", cex = 2,xpd = TRUE) 

# Tukey's original box and whiskers plot 

plot(d, lty = 1, 
     staplelty = 0,
     boxwex = 0.4, # boxfill = "black", 
     medlwd = 1#, #medcol = "white", medbg = "white"
     )
text(-0.2, 3.8, "b)", cex = 2,xpd = TRUE) 


# Tufte's mid-gap plot

plot(d, lty = 1, las = 1, 
     frame.plot = FALSE, 
     boxwex = 0.4, boxlty = 0, boxfill = NA, 
     medlty = 0, medpch = 20, medcex = 1.4,
     staplelty = 0,
     xaxt = "n", yaxt = "n"
     )
text(-0.2, 3.8, "c)", cex = 2,xpd = TRUE) 

axis(1, at = 1:2, labels = c("A","B"), tick = FALSE)
axis(2, at = c(0,1.5,2.5,3.5,5), las = 1, lwd = 0.5)


dev.off()
