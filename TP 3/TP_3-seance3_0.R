#I Etude d'une variable qualitative

#1. Importer hanball.txt
df <- read.table(file.choose(),header=TRUE)

head(df)
#2. Lister les noms de toutes les variables existantes dans le jeu de données.
names(df)

#3. Classer les variables selon leurs types.
str(df)

#4. Extraire un résumé sur la variable POSTE. 
summary(df$POSTE)

#5-6. Déterminer les fréquences relatives à la variable POSTE.
effect_poste= table(df$POSTE)
effect_poste

freq = prop.table(effect_poste)      #same shit
freq = effect_poste/nrow(df)         #same shit
freq = effect_poste/length(df$POSTE) #same shit

#6. Déterminer une représentation graphique des fréquences relatives de la variable
#POSTE en utilisant un diagramme circulaire et interpréter le résultat obtenu.

pie(x= effect_poste, main="This is a title!!", col = 1:5) #if you had a 'figure margins too large error' it's gonna be that plot on right, col 1:5 is for colors

#7. Déterminer une représentation graphique des fréquences absolues en utilisant un
#digramme en bâtons.
barplot(effect_poste)


#II Etude d'une variable quantitative

#8. Les tailles mesurées sur chacun des 64 handballeurs sont données par la variable
#TAD, donner un résumé statistique sur cette variable et interpréter le résultat obtenu.
summary(df$TAD)

#9. Représenter graphiquement la variable taille en utilisant un histogramme.
hist(df$TAD)

#10. Déterminer le nombre des handballeurs qui ont une taille comprise entre 175 et 180 cm.
nb_hand = length(df$TAD[which (df$TAD>175 & df$TAD<180)])
nb_hand
