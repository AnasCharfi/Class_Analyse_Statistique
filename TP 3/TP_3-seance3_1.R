# Partie 2 TP 3

#Importer ski.txt
db <- read.table(file.choose(),header=TRUE, sep="\t")
summary(db)

#1- Préciser la nature de chacune des variables statistiques qui se présentent dans le fichier.
str(db)

#2- Etude de la variable « Age ».

##a- Déterminer les indicateurs statistiques usuels pour cette variable (moyenne, quartiles,écart type, min, max).
summary(db$age)

##b- Extraire la ligne de l'observation ayant l'âge le plus élevé
max_age = db[which.max(db$age),]
max_age

##c- Définir des classes (pas 5 ans) pour la variable « Age ». Quelle est la classe modale ?
range(db$age)

class = hist(db$age,breaks = seq(10,75,5),plot=FALSE )
class

ind = which.max(class$counts)
ind

class.modale = paste(class$breaks[ind],class$breaks[ind+1],sep="-")
class.modale

##d- Tracer alors la représentation graphique adéquate et commentez.
class = hist(db$age,breaks = seq(10,75,5),plot=TRUE )

##e- Tracer le boxplot de la variable « Age ». Interpréter.
boxplot(db$age)


#3- Etude de la variable « Q5_lieu » et « Q6_niveau ».
head(db)

##a- Quelles sont les modalités de chacune de ces variables ?

levels(db$Q5_lieu)
#describe(db$Q5_lieu) kifkif

levels(db$Q6_niveau)
#describe(db$Q6_niveau)kifkif

##b- Déterminer l'effectif et la fréquence de chacune de ces variables.

#Q5_lieu#
effectif_lieu = table(db$Q5_lieu)
##describe(db$Q5_lieu)$frequence kifkif
effectif_lieu

freq_lieu = prop.table(effectif_lieu)
#describe(db$Q5_lieu)$proportion kifkif
# freq_lieu = effectif_lieu/length(db$Q5_lieu) kifkif
freq_lieu

#Q6_niveau#
effectif_niveau = table(db$Q6_niveau)
effectif_niveau

freq_niveau = prop.table(effectif_niveau)
# freq_niveau = effectif_niveau/length(db$Q6_niveau) kifkif
freq_niveau

##c- Déterminer le mode de chacune de ces variables.
m5 = names(which.max(effectif_lieu))
m5

m6 = names(which.max(effectif_niveau))
m6

##d- Proposer une représentation graphique pour chaque variable. (les variables qualitatif na3mloulhom representation kan b barplot wala pie)
pie(effectif_lieu)
barplot(effectif_lieu)
