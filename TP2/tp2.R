#1. Importation des données
baby <- read.table(file=file.choose(),header=TRUE,sep="",dec=".",skip = 1)
baby

#str describe our dataset, it shows us the variables and their types
str(baby)
#changement de répertoir car readline lazimha n7otou fi nafs il repertoir
getwd()
setwd("C:/Users/Big Anonyme/Desktop/Esprit/BI/Analyse Statistique/TP2")
getwd()

readLines("data_baby.txt",n=5)

#2.
#names nous donne les noms des variables
names(baby)
#nous donnes le nombres des lignes
dim(baby)
head(baby)

#3.
plot(baby$age)

#4.
baby$age>50
which(baby$age>80)
baby$age[c(400,429)] <- NA
baby$age[c(400,429)]

#5.
summary(baby)
summary(baby$age)

#6.

boxplot(baby$weight~baby$parity)
table(baby$parity)
