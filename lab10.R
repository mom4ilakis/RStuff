x = runif(30, 0, 10);
y = 2*x + 1 ;
plot(x,y);

#used for testing for correlation of type y = b0 +b1*x + epsilon
l = lm(y~x)
########################################
y2 = rnorm(30);
l1 = lm(y~x)
###################################3
age = scan()
pulse = scan()
hypPulse = 220 - age
lm(hypPulse ~ age)
lm(pulse ~ age)
val = lm(pulse ~ age)
summary(val)

c = coefficients(summary(val))
t = (c[2,1] + 1 ) / c[2,2];
(1 - pt(t, df = 13))*2;
t1 = (c[1,1] - 220) / c[1,2];
(pt(t1,df = 13))*2;

d = data.frame(age = c(30,40,50)) # name of model should be the same as the name in the data frame
predict(val, d)


predict(val, d, interval='confidence')
hpDisp = lm(mtcars$hp ~ mtcars$disp)
MpgWt = lm(mtcars$mpg ~ mtcars$wt)


