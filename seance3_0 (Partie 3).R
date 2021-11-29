#Application 3

gender = c('M','F','M','M','F','M','NA','M')

Manpower = c(25.00,NA,33.00,NA,25.00,29.00,26.00,32.00)

Sales = c(343.00,280.00,332.00,272.00,NA,326.00,259.00,297.00)


df = data.frame(gender,Manpower,Sales)

#na.rm pour avoir le mean != NA puisqu'on si on a une valeur NA le resultat de mean est NA

mean(df$Manpower,na.rm=TRUE)

#extraire une dataframe de femme seulement
df_femme= df[which(df$gender=="F"),]
df_femme

mean(df_femme$Manpower,na.rm=TRUE)

df_homme= df[which(df$gender=="M"),]
mean(df_homme$Manpower,na.rm=TRUE)

#3 Imputation des NA
df_femme$Manpower[is.na(df_femme$Manpower)]=25
df_femme

df_homme$Manpower[is.na(df_homme$Manpower)]=29.75
df_homme

#Exercice 2

#Importation du fichier
gazella = read.table(file=file.choose(),header=TRUE,sep=";")
#afficher les 5 premiere lignes
head(gazella)

#pour afficher les dimensions du fichier ou dataframe
dim(gazella)

#kime describe mta3 python ta3tik il fazet lkol mta3 df
summary(gazella)

#message d'erreur= il y a des valeurs na 
na.fail(gazella)

#4 calcul taux des donnees manquantes
sum(is.na(gazella))/prod(dim(gazella)) ## (0.13 > 5%) il faut supprimer ses donnees

library(Hmisc)

#imputation des donnees
summary(gazella$NOX)
dat.moy = impute(gazella$NOX,fun=mean)
dat.moy

#question 11.2 et 12 na9sin
#barra lawaj 3lech 'mati5dimch'
datt = knn(gazella)


#Application5
db <- read.table(file=file.choose(),header=TRUE)
db

#exercice 6
cars
datal<-cars
summary(datal)
