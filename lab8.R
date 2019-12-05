prop.test(c(351,71),c(605,195),alternative = 'less')
t.test(radar1, radar2)
taxisAAout = ewr$AA[ewr$inorout == 'out']
taxisNWout = ewr$NW[ewr$inorout =='out']
boxplot(taxisAAout,taxisNWout)
shapiro.test(taxisAAout)
wilcox.test(taxisAAout, taxisNWout)

