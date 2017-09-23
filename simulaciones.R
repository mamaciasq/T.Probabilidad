# import the library to test the normality of the distribution
library(nortest)

size = 100000

u = runif(size)
v = runif(size)

x=rep(0,size)
y=rep(0,size)

for (i in 1:size){
  x[i] = sqrt(-2*log(u[i]))*cos(2*pi*v[i])
  y[i] = sqrt(-2*log(u[i]))*sin(2*pi*v[i])
}

#a test for normality
lillie.test(c(x,y))

#plot the estimation of the density
plot(density(c(x,y)))

# Sebastián

n = 200
u1=runif(n)
u2=runif(n)
z1=sqrt(-2*log(u1))*cos(2*pi*u2)
z2=sqrt(-2*log(u2))*cos(2*pi*u1)
x=seq(-3,3,by=.01)
par(mfrow=c(1,2))
hist(z1,freq = F);lines(x,dnorm(x,mean(z1),sd(z1)))
hist(z2,freq = F);lines(x,dnorm(x,mean(z2),sd(z2)))