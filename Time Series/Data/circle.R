library(graphics); library(grid)
pdf(file="circle.pdf", width=6, height=6.5)
plot(-1:1,-1:1, type='n', xlab='x (Real axis)', ylab="y (Imaginary axis)", cex.lab=1.3)
x=seq(-1,1,len=1000); y=sqrt(1 - x^2); points(x,y,type='l', lwd=1.5); points(x,-y, type='l', lwd=1.5)
theta=seq(0,acos(.5),len=1000); x=.29*cos(theta); y=.29*sin(theta); points(x,y,type='l', lwd=1.2); 
segments(0,0,0.5,sqrt(1-.5^2),lwd=2, lty=3); abline(v=0); abline(h=0)
arrows(0,0, .5,0, ang=8, lwd=3)
segments(0.5, 0, .5, .3, lwd=3)
arrows(0.5, 0.5, .5, sqrt(1-.5^2), ang=8, lwd=3)
text(.66, .95, expression(e^{i*omega*italic(t)}), cex=1.9)
text(.15, .1, expression(omega*italic(t)), cex=1.6)
#x=seq(0,0.2,len=1000); y=sqrt(.2 - x^2); points(x,y,type='l'); 
text(.25, -.15, expression(plain(cos)(omega*italic(t))), cex=1.5)
text(.55, .4, expression(plain(sin)(omega*italic(t))), cex=1.5)
dev.off()


