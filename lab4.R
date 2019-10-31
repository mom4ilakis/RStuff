throwDice = function(n)
{
  
  
  return(rbinom(n,30,1/6))
  
}

expRes = function(n)
{
  
  vec = throwDice(n);
  return(sum(vec < 5))
  
  

}

sum(dbinom(2,4:7,0.2))*0.2;

pullballs = function(n)
{
  rhyper(n,7,6,8)
}