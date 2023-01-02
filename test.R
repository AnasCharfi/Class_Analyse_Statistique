#test

#1.
titanic = read.table(file.choose(),header=TRUE, sep=",")
head(titanic)
#2.
#is.na(titanic)=NA

#3.
titanic[0:6,]

#4 et 5.
str(titanic)

#6.
enfant = titanic[which(titanic$Age<18),]
head(enfant)

#7.
count = 0
for (i in enfant$Survived) {
  if (i==1)
  {
    count = count+1
  }
}
count

#8.
survived = data.frame(titanic[which(titanic$Survived==1),])
head(survived)

dead = data.frame(titanic[which(titanic$Survived==0),])
head(dead)

#9.
survivants = nrow(survived)
(survivants/nrow(titanic))*100

#10.
eff_surv = table(survived$Pclass)
eff_dead = table(dead$Pclass)
head(eff_dead)


#11.
par(mfrow=c(1,2))

#12.
pie(eff_surv)
pie(eff_dead)

#14.
eff_surv_sex = table(survived$Sex)
eff_dead_sex = table(dead$Sex)
eff_surv_sex
eff_dead_sex
pie(eff_surv_sex)
pie(eff_dead_sex)

#18.
max = survived[which.max(survived$Age),]$Age
min = survived[which.min(survived$Age),]$Age

d_max = dead[which.max(dead$Age),]$Age
d_min = dead[which.min(dead$Age),]$Age
d_max

d_min


s_class = hist(survived$Age,breaks = seq(0,80,10),plot=FALSE )
d_class = hist(dead$Age,breaks = seq(0,80,10),plot=FALSE )

ind = which.max(s_class$counts)
ind
s_class.modale = paste(s_class$breaks[ind],s_class$breaks[ind+1],sep="-")
s_class.modale
