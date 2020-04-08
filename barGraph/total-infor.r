setwd('C:/Research/Experiment/DataAnalysis/barGraph')

colors = c("green","red","white","orange")
nbar = 27
nblock = 4
# read the data from csv file, save to list
d = read.csv("total_infor.csv",head=FALSE, sep=",",na.strings = "")
# change the list to matrix
m = matrix(unlist(d),nbar+1,nblock)
# delete the first row
m = m[-1,]
# change the data type
m = as.numeric(as.character(m))
# change the unit to million
m = m/1000000
# construct matri
m = matrix(m,nrow=nblock,ncol=nbar,byrow=TRUE)
# Create the bar chart.
barplot(m,main="totinfo",cex.axis=1.5,cex.lab=1.5, cex.main=1.5,cex.names=1.5,names.arg=c(1:nbar),xlab="Program Versions",ylab="MTP(million)",col=colors)
