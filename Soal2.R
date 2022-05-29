# Soal 2
xbar2 = 23500         
mu02 = 20000
sd2 = 3900
n2 = 100
z2 = (xbar2-mu02)/(sd2/sqrt(n2)) 
z2

alpha2 =0.05
z.alpha2 = qnorm(1-alpha2) 
z.alpha2 
pval = pnorm(z2, lower.tail=FALSE) 