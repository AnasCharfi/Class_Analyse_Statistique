Individus = c("Erika", "Celia", "Eric", "Eve", "Paul", "Jean", "Aden", "Louis", "Jules", "Léo")
Poids = c (16, 14, 13.5, 15.5, 16.5, 16, 17, 14.8, 17, 16.7)
Taille = c(100.0, 97.0, 95.5, 101.0, 100.0, 98.5, 103.0, 98.0, 101.5, 100.0)
Sexe = c("F", "F", "G", "F", "G", "G", "G", "G", "G", "G")




PoidsMean = mean(Poids)
PoidsMean

TailleMean = mean(Taille)
TailleMean

t2 = Taille/100*Taille/100
IMC = Poids/t2
IMC

df = data.frame(Individus, Sexe, Poids, Taille, IMC)
df
plot(df)