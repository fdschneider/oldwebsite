# grids
#
# for article: graphical parsimony
# published 08.06.2014
# by Florian D. Schneider
#
set.seed(17)

x <- rnorm(150, 2.2, 0.4)
y <- c(11 + 1.4 * x + rnorm(150, 0, 0.1))

d1 <- data.frame(
  x = x,
  y = y
)


x <- rnorm(20, 2.2, 0.4)
y <- c(11 + 1.4 * x + rnorm(20, 0, 0.6))

d2 <- data.frame(
  x = x,
  y = y
)



png("E:\\Eigene Dokumente\\Uni\\fdschneider.github.com\\assets\\grids.png", 
    width = 600, height = 350, antialias = "gray", bg = "transparent" )

par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,1,0))
par(las = 1, bty  = "o" , pch = 20)
plot(d1, ylim = c(11,16), yaxs = "i", yaxp = c(12,16,2),
     xlim = c(1,3.25),  xaxs = "i", xaxp = c(1,3,2))
abline(h = seq(10,16,1) )
abline(v = seq(1,3,0.25) )
mtext("a)", side = 3, cex = 2, adj = 0, line = 1, xpd = TRUE) 


par(las = 1, bty  = "n" , pch = 20)
plot(d1, ylim = c(11,16), yaxs = "i", yaxp = c(12,16,2),
     xlim = c(1,3.25),  xaxs = "i", xaxp = c(1,3,2))
rect(par()$usr[1],par()$usr[3], par()$usr[2], par()$usr[4], col = "grey70", border = NA)
abline(h = seq(10,16,1), col = "white" )
abline(v = seq(1,3,0.25), col = "white" )
points(d1)
mtext("b)", side = 3, cex = 2, adj = 0, line = 1, xpd = TRUE) 

par(las = 1, bty  = "n" )

plot(d1, ylim = c(11.3,15.5), yaxs = "i", yaxp = c(13,15,2),
     xlim = c(1,3.25),  xaxs = "i", xaxp = c(1,3,2))
mtext("c)", side = 3, cex = 2, adj = 0, line = 1, xpd = TRUE) 


plot(d2, ylim = c(11.9,15.1), yaxs = "i", yaxp = c(12,15,3), 
     xlim = c(1,3.25),  xaxs = "i", xaxp = c(1,3,2), cex = 2)
abline(h = seq(10,16,1), lwd = 0.5, col = "grey80" )
abline(v = seq(1.5,3,0.5), lwd = 0.5, col = "grey80" )
points(d2, cex = 2)
#text(d2$x, d2$y, adj = 2, labels = 1:20)
text(d2$x[c(20,17,18,4,8,7,3,16)], d2$y[c(20,17,18,4,8,7,3,16)], adj = 2, labels = c(20,17,18,4,8,7,3,16))

points(d2[20,], col = "red", cex = 2)
mtext("d)", side = 3, cex = 2, adj = 0, line = 1, xpd = TRUE) 


dev.off()





