#Partie A

library(questionr)
data("rp2012")
db=rp2012
head(db)

par(mfrow=c(1,2))
names(db)

plot(db$cadres, db$proprio) #absence de corrélation

plot(db$cadres, db$dipl_sup) #présence d'une corrélation linéaire

cor(db$cadres,db$dipl_sup) #la valeur du coefficient de pearson

cor(db$cadres,db$dipl_sup, method="spearman")

cor(db$cadres,db$proprio) #la valeur est faible qui confirme absence de relation linéaire

cor(db$cadres,db$proprio, method="spearman") #aussi faible donc absence total des relations


#8.
cor.test(db$cadres,db$dipl_sup) #

#Partie B

library(questionr)

data("hdv2003")
db = hdv2003

#le tableau de contigence (croisé) des deux variables
cont = table(db$qualif,db$sexe)

#Diagramme en mosaique
mosaicplot(cont)


#Partie C

#1. 
sportif = db[which(db$sport=="Oui"),]
sportif
non_sportif = db[which(db$sport=="Non"),]
mean(sportif$age) #40
mean(non_sportif$age) #52

boxplot(db$age~db$sport)
par(mfrow=c(1,2))
hist(sportif$age)
hist(non_sportif$age)

shapiro.test(db$age)

wilcox.test(db$age~db$sport)
