f = function(x=1)
{
  x=x+1
}

numberOfPeople = function( p )
{
  p1 = 1
  cnt = 1
  while (1-p1 < p) 
  {
   p1 = p1*((365 - cnt )/365)
   cnt= cnt + 1
  }  
  
  return(cnt)
}
throwDice = function(n)
{
  return(sample(1:6, n , replace = T))
}

countRes = function(thrownDice , number)
{
 sixes = sum(thrownDice == number) 
return(sixes)
}

empiricalProb = function(throws, number=6)
{
  emprProb = countRes(throwDice(throws), number) / throws
}

getPlotEmpProbData = function(n, th)
{
  vecRes = c(1:n)
  k =0
  for (i in c(1:n))
  {
  diceRolls = throwDice(th)
  k = k + countRes(diceRolls,6)
  vecRes[i] = k / (i * th)
  }
  
  return(vecRes)
}




