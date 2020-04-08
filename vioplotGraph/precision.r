setwd('/Users/wanghaifeng/Desktop/HMER_revise_plot/revise_plot/RQ3')

library(vioplot)
library(sm)


x <- read.csv("precision.csv")

pdf("Jac.pdf",9,6)
vioplot(x[[1]]/100,x[[11]]/100,x[[1]]/100,x[[6]]/100,x[[16]]/100,x[[21]]/100,x[[26]]/100,names=c("TOTAL","HMER 10%","DMES","SOME 10%","SAMP 10%","SAMP 20%","SAMP 30%"), col="gold")
title("Jaccard")
title(xlab="Mutation Reduction Strategies",ylab="EXAM score")
dev.off()

pdf("Och.pdf",9,6)
vioplot(x[[2]]/100,x[[12]]/100,x[[2]]/100,x[[7]]/100,x[[17]]/100,x[[22]]/100,x[[27]]/100,names=c("TOTAL","HMER 10%","DMES","SOME 10%","SAMP 10%","SAMP 20%","SAMP 30%"), col="gold")
title("Ochiai")
title(xlab="Mutation Reduction Strategies",ylab="EXAM score")
dev.off()

pdf("Op2.pdf",9,6)
vioplot(x[[3]]/100,x[[13]]/100,x[[3]]/100,x[[8]]/100,x[[18]]/100,x[[23]]/100,x[[28]]/100,names=c("TOTAL","HMER 10%","DMES","SOME 10%","SAMP 10%","SAMP 20%","SAMP 30%"), col="gold")
title("Op2")
title(xlab="Mutation Reduction Strategies",ylab="EXAM score")
dev.off()

pdf("Tar.pdf",9,6)
vioplot(x[[4]]/100,x[[14]]/100,x[[4]]/100,x[[9]]/100,x[[19]]/100,x[[24]]/100,x[[29]]/100,names=c("TOTAL","HMER 10%","DMES","SOME 10%","SAMP 10%","SAMP 20%","SAMP 30%"), col="gold")
title("Tarantula")
title(xlab="Mutation Reduction Strategies",ylab="EXAM score")
dev.off()


pdf("Dst.pdf",8.5,6)
vioplot(x[[5]]/100,x[[15]]/100,x[[10]]/100,x[[20]]/100,x[[25]]/100,x[[30]]/100,names=c("TOTAL","HMER 10%","SOME 10%","SAMP 10%","SAMP 20%","SAMP 30%"), col="gold")
title("Dstar")
title(xlab="Mutation Reduction Strategies",ylab="EXAM score")
dev.off()

