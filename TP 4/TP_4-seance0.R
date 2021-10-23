library(questionr)
data("rp2012")
db=rp2012
head(db)

par(mfrow=c(1,2))
names(db)

plot(db$cadres, db$proprio) #absence de corr�lation

plot(db$cadres, db$dipl_sup) #pr�sence d'une corr�lation lin�aire

cor(db$cadres,db$dipl_sup) #la valeur du coefficient de pearson

cor(db$cadres,db$dipl_sup, method="spearman")

cor(db$cadres,db$proprio) #la valeur est faible qui confirme absence de relation lin�aire

cor(db$cadres,db$proprio, method="spearman") #aussi faible donc absence total des relations


#8.
cor.test(db$cadres,db$dipl_sup) #