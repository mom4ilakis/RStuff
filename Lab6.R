x = rnorm(100)
y = runif(100, 0,5)
z = rexp(100)
#Use hist to check for type 



# generate sequence

sqn = seq(0.005, by=0.01, length.out=100)

#get quiantills

q = qnorm(sqn)

# use qqnorm on sqn
# use qqline on sqn
p_val_sqn = shapiro.test(sqn)



getStudent = function(n, df)
{
  
  t = rt(n, df);
  
  
  return(t)
}

drawQQnorm = function(x)
{
  qqnorm(x);
}

doShapiroTest= function(x)
{
  return (shapiro.test(x));
}


#maybe doesn't work
sumOfNormals = function(number,attempts, mean, sd)
{
  sum = 0;
  for (variable in c(1:number)) {
    sum = sum + rnorm(attempts,mean,sd);
    
  }
    return(sum);
}

sumOfunifs = function(number, att, min, max)
{
  
  sum = 0;
  
  for (variable in c(1:number)) {
    sum = sum + runif(att,min,max)
  }
  
  return(sum);
  
  
  
  runif(n,min,max)
  
}

sumOfExp = function(number, att, rate=1 )
{
  sum = 0;
  for (variable in c(1:number)) {
    sum = sum + rexp(att,rate)
  }
}

#This works, was written ibn the console
# attach(babies)
# > hist(wt1)
# > filtredData = wt1[wt1 < 999]
# > hist(filtredData)
#use log to normalize
