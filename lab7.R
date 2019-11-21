getNorm = function(n, mean, disp){
  
  return(rnorm(n,mean,sqrt(disp)));
}

#> xTask1 = getNorm(20,3,4);
#> mean(XTask1);

getQuantillnorm = function(p,mean,disp){
  
  return(qnorm(p,mean,sqrt(disp)));
}

#> q = getQunatillNorm(0.957,0,1)

#calculates the "trust" interval end points
calcLimitPoints = function(q,n,mean,disp){
  return(c(mean-q*sqrt(disp/n),mean+q*sqrt(disp/n)));
}

#t.test if nothing given exept data gives trust interal end point calc at 95%

calcTrustEndPoints = function(data,trustLevel=0.957){
  return(t.test(data,conf.level=trustLevel));
}

# copy data from pdf in moodle
#use scan when there are no commas, name_var = scan(), then paste, when done press enter to finish
#check for normal data with shapiro p-val > 5%(0.05) => norm
#to get expectation factor will need Ex = mean/ summary
#test for median wilcox.test

# use boxplot, hist qqnorm qqline and shapiro.test to check if data is normal
#> qqnorm(rat)
#> qqline(rat)
#> shapiro.test(rat)
#> t.test(rat,conf.level=0.967)

#need to explictily give the conf.int argument
#>wilcox.test(malpract, conf.int = 0.96)


#> t.test(log(malpract))


#prop.test to get confidance(trust) interval

#> prop.test(87,150,conf.level = 0x = getNorm(20,5,4)


#> x = getNorm(20,5,4)
#> t.test(x, conf.level = 0.92)

meanIsIn = function(attempts, n, mean, disp){
  countMean = 0;
  
  for(i in c(1:attempts)){
    x = getNorm(n, mean, disp);
    test = t.test(x,conf.level = 0.90);
    if(mean < test$conf.int[2] && mean > test$conf.int[1]){
      countMean= countMean + 1;
    }
  }
  
  return(countMean)
  
}

#matplot takex two matrixes X,Y, takes two entries from matrix one as a point and draws a line to a point with coordinates form the second matrix

