#t.test for normal
#wilcox for not normal
#prop.test for propotional
# t.test(vacation, mu = 24, alternative = 'two.sided')
#> t = (mn - 24)*sqrt(35) / standartDiv
#> mn = mean(vacation)
#> standartDiv = sd(vacation)
#> pt(t, 34) * 2
#> prop.test(41, 100, 0.5, alternative = 'two.sided') can't discard hypo2^
#> prop.test(410, 1000, 0.5, alternative = 'two.sided') discard hyp
#> wilcox.test(data,mu=5,alternative = 'greater')
#> wilcox.test(stomach, mu = 100, alternative = 'less')
#> t = table(Smoke[Sex == 'Male'])
#> numberNon = t['Never']
#> all = sum(t)

#> prop.test(numberNon, all, p=0.81, alternative = 'less')


genNormal = function (n , mean, sd ) {
  return(rnorm(n,mean,sqrt(sd)));
}
#> x = genNormal(10,2,4)
#> t.test(x,mu=3)
#> t.test(x,mu=5)
#> x = genNormal(100,2,4)
#> t.test(x,mu=3)
#> t.test(x,mu=5)



