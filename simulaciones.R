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

library(VGAM)
shapiro.test(z2)
z1<-rrayleigh(4)
ks.test(z1,prayleigh,4)


### Nata

####################################
#············· 12.7 ················
#···································

n<-1000
x<-numeric(n)
y<-numeric(n)
j=0
while(j<=n){
  u<-runif(1)
  v<-runif(1)
  if (u^2+v^2<=1){
    x[j]<-u
    y[j]<-v
    j=j+1
  }
}

R=sqrt(x^2+y^2)

a<-seq(0,1,by=0.01)
hist(R,freq=F,xlim=c(0,1))
lines(density(R))
lines(a,2*a)

####################################
#············· 12.11················
#···································

library( VGAM )
n<-10000
mu<-0
sigma<-2

x<-rnorm(n,mu,sigma)
y<-rnorm(n,mu,sigma)

#·········Z~Rayleigh(sigma)··········

z<-sqrt(x^2+y^2)

a<-seq(0,8,by=0.01)
hist(z,freq = F)
lines(density(z))
lines(a,drayleigh(a,sigma),type="l",col="red")

ks.test(z,prayleigh,2)

#·········Z~U(-pi/2,pi/2)··········
w<-atan(x/y)
a<-seq(-1.52,1.52,by=0.01)

hist(w,freq = F)
lines(density(w))
lines(a,dunif(a,-pi/2,pi/2),type="l",col="red")

ks.test(w,punif,-pi/2,pi/2)

####################################
#············· 12.15 ···············
#···································

#············A······················



#············B······················

n<-100
u1<- runif(n)
u2<- runif(n)
x<-numeric(n)
y<-numeric(n)
for (i in 1:n) {
  x[i]<-sqrt(-2*log(u1[i]))*cos(2*pi*u2[i])
  y[i]<-sqrt(-2*log(u1[i]))*sin(2*pi*u2[i])  
}
a<-seq(-4,4,by=0.01)

hist(x, freq=F)
lines(density(x),col="blue")
lines(a,dnorm(a),type="l",col="red")
hist(y, freq=F)
lines(density(y),col="blue")
lines(a,dnorm(a),type="l",col="red")

shapiro.test(x)
shapiro.test(y)

ks.test(x,pnormal)
ks.test(y,pnormal)