

getNorm = function(observation,mean,dispersion)
{
  x = rnorm(observation,mean,sqrt(dispersion));
  return(x);
}

getUniform = function(n,min=0,max=1)
{
  
  x = runif(n,min,max)
  return(x)
  
}

getGamma = function(n,shape,scale)
{
  
  
  x = rgamma(n,shape,scale)
  
  
}


getProb = function(min,max)
{
  
  x = pnorm(max) - pnorm(min)
  return(x)
  
}

probQualityMelon = function(qu,exp,std)
{
  x = pnorm(qu,exp,sqrt(std))
  return(x)
}
  
getFirstQualityMelon = function(mark,mean,std)
{
  
  x = pnorm(mark,mean,sqrt(std),lower.tail = F)
  
  firstClass = probQualityMelon(20,25,36) + x/2
  
  size = qnorm(firstClass,mean,sqrt(std))
  
  return(size)
  
  
  
}
  
  