ccont = c(11, 13, 15.5, 12, 8, 9, 13, 16)
exam = c(8.5, 7, 16, 9, 7, 13, 14, 17)
moy = ccont*0.4+exam*0.6

Note = data.frame(ccont,exam,moy)

Note = Note[order(Note$moy),]
Note
count = 0
for (i in Note$moy) {
  if (i>10)
    {
    count = count+1
  }
}
Note
count
max = Note[which.max(Note$moy),]
max
min = Note[which.min(Note$moy),]
min
moreThenFifteen = nrow(Note[which (Note$moy>15),])
moreThenFifteen
getwd()
write.csv(Note,file ="rr")
