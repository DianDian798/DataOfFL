setwd('C:/Research/Experiment/DataAnalysis/vioplotGraph')

library(vioplot)
library(sm)

x <- read.csv("precisionDstar.csv")

pdf("Dstar.pdf",width = 9, height = 6)

vioplot(x[[1]],x[[2]],x[[3]],x[[4]], main = "Dstar", cex.axis=1.5,cex.lab=1.5, cex.main=1.5,cex.names=1.5, names=c("MBFL","IETCR","FTMES", "SAMP(30%)"), col="gold")
#title("Dstar")
title(xlab="Mutation Reduction Strategies",ylab="EXAM score", cex.lab = 1.5)
dev.off()