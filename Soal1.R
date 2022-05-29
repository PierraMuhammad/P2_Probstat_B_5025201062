#1
#a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
n = 9
orang = c(seq(1:n))
x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
tabel = data.frame(orang,x,y)
selisih = tabel$y - tabel$x
standardev = sd(selisih)
print(standardev)

#b
mu = 0
xbar = mean(selisih)
t =((xbar - mu) / (standardev/sqrt(n)))
pvalue = 2 * pt(-abs(t), df=n-1)
print(pvalue)

#c
t.test(x=tabel$y, 
       y=tabel$x,
       alternative = "two.sided", 
       mu = 0, 
       paired = TRUE, 
       var.equal = TRUE, 
       conf.level = 0.95)