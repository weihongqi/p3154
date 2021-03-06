library(VennDiagram)
A128_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A128_A_reads.txt", header=FALSE)
A129_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A129_A_reads.txt", header=FALSE)
A297_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A297_A_reads.txt", header=FALSE)
A298_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A298_A_reads.txt", header=FALSE)
A389_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A389_A_reads.txt", header=FALSE)
library(VennDiagram)
venn.plot <- venn.diagram(list(A128_A$V1, A129_A$V1, A297_A$V1, A298_A$V1, A389_A$V1),NULL, fill=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), alpha=c(0.2, 0.2, 0.2, 0.2, 0.2), cex = 0.8, category.names=c("A128", "A129", "A297", "A298", "A389"), cat.just=list(c(0,1) , c(0,0) , c(0,0) , c(0,0), c(1,0)), cat.col=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), lty="blank")
pdf("2A.pdf");
grid.draw(venn.plot)
dev.off()

A128_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A128_G_reads.txt", header=FALSE)
A129_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A129_G_reads.txt", header=FALSE)
A297_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A297_G_reads.txt", header=FALSE)
A298_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A298_G_reads.txt", header=FALSE)
A389_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/2/A389_G_reads.txt", header=FALSE)
library(VennDiagram)
venn.plot <- venn.diagram(list(A128_G$V1, A129_G$V1, A297_G$V1, A298_G$V1, A389_G$V1),NULL, fill=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), alpha=c(0.2, 0.2, 0.2, 0.2, 0.2), cex = 0.8, category.names=c("A128", "A129", "A297", "A298", "A389"),cat.just=list(c(0,1) , c(0,0) , c(0,0) , c(0,0), c(1,0)), cat.col=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), lty="blank")
pdf("2G.pdf");
grid.draw(venn.plot)
dev.off()

A128_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A128_A_reads.txt", header=FALSE)
A129_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A129_A_reads.txt", header=FALSE)
A297_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A297_A_reads.txt", header=FALSE)
A298_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A298_A_reads.txt", header=FALSE)
A389_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A389_A_reads.txt", header=FALSE)
library(VennDiagram)
venn.plot <- venn.diagram(list(A128_A$V1, A129_A$V1, A297_A$V1, A298_A$V1, A389_A$V1),NULL, fill=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), alpha=c(0.2, 0.2, 0.2, 0.2, 0.2), cex = 0.8, category.names=c("A128", "A129", "A297", "A298", "A389"), cat.just=list(c(0,1) , c(0,0) , c(0,0) , c(0,0), c(1,0)), cat.col=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), lty="blank")
pdf("6A.pdf");
grid.draw(venn.plot)
dev.off()

A128_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A128_G_reads.txt", header=FALSE)
A129_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A129_G_reads.txt", header=FALSE)
A297_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A297_G_reads.txt", header=FALSE)
A298_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A298_G_reads.txt", header=FALSE)
A389_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/6/A389_G_reads.txt", header=FALSE)
library(VennDiagram)
venn.plot <- venn.diagram(list(A128_G$V1, A129_G$V1, A297_G$V1, A298_G$V1, A389_G$V1),NULL, fill=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), alpha=c(0.2, 0.2, 0.2, 0.2, 0.2), cex = 0.8, category.names=c("A128", "A129", "A297", "A298", "A389"), cat.just=list(c(0,1) , c(0,0) , c(0,0) , c(0,0), c(1,0)), cat.col=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), lty="blank")
pdf("6G.pdf");
grid.draw(venn.plot)
dev.off()

A128_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A128_A_reads.txt", header=FALSE)
A129_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A129_A_reads.txt", header=FALSE)
A297_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A297_A_reads.txt", header=FALSE)
A298_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A298_A_reads.txt", header=FALSE)
A389_A<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A389_A_reads.txt", header=FALSE)
library(VennDiagram)
venn.plot <- venn.diagram(list(A128_A$V1, A129_A$V1, A297_A$V1, A298_A$V1, A389_A$V1),NULL, fill=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), alpha=c(0.2, 0.2, 0.2, 0.2, 0.2), cex = 0.8, category.names=c("A128", "A129", "A297", "A298", "A389"), cat.just=list(c(0,1) , c(0,0) , c(0,0) , c(0,0), c(1,0)), cat.col=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), lty="blank")
pdf("66A.pdf");
grid.draw(venn.plot)
dev.off()

A128_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A128_G_reads.txt", header=FALSE)
A129_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A129_G_reads.txt", header=FALSE)
A297_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A297_G_reads.txt", header=FALSE)
A298_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A298_G_reads.txt", header=FALSE)
A389_G<-read.table("/srv/GT/analysis/qiwei/p3154/o6184_lofreq/allelic_reads/66/A389_G_reads.txt", header=FALSE)
library(VennDiagram)
venn.plot <- venn.diagram(list(A128_G$V1, A129_G$V1, A297_G$V1, A298_G$V1, A389_G$V1),NULL, fill=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), alpha=c(0.2, 0.2, 0.2, 0.2, 0.2), cex = 0.8, category.names=c("A128", "A129", "A297", "A298", "A389"), cat.just=list(c(0,1) , c(0,0) , c(0,0) , c(0,0), c(1,0)), cat.col=c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"), lty="blank")
pdf("66G.pdf");
grid.draw(venn.plot)
dev.off()
