db = read.table(file=file.choose(),header=TRUE,sep=",",na.strings = "")
head(db)
db[2,]
db[,2]
db[1:10,]
#pour afficher les colonnes 2,4,5
db[,c(2,4,5)]

db_tri = db[order(db$BWT),]
#pour trier à l'ordre decroissant 
#db_tri = db[order(db$BWT,decreasing = TRUE),]

head(db_tri)

#les femme qui fumme
tr = db[which (db$RACE<3 & db$SMOKE==1),]
tr

tr1 = tr = db[which( (db$RACE==1 | db$RACE==2) & db$SMOKE==1),]
tr1
