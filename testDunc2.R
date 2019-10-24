probWinFather = function(tries)
{
  
  return(sample(0:1,1,prob = (c(0.7,0.3))))
}

probWinMother = function(tries)
{
  return(sample((0:1),1,prob = c(0.6,0.4)))
}

winLossA = function(tries)
{
  res = 0
  for (i in 1:tries)
  {
    res = res + (probWinMother(2)+probWinFather(1)) 
  }
  return(res)
  
}
winLossB = function(tries)
{
  res = 0
  for (i in 1:tries)
  {
    res = res + (probWinMother(1)+probWinFather(2)) 
  }
  return(res)
}
