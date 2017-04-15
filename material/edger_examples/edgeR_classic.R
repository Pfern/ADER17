#counts_trapnell.tab contains the read counts for C1_R1..R3 and C2_R1..R3 that you generate using htseq-counts

countdata<-read.table("counts_trapnell.tab",sep="\t",header=T)
row.names(countdata) <- countdata$Gene

#Simple, no filtering
library(edgeR)
y <- DGEList(counts=countdata[,2:7], genes=countdata[,1], group = c("C1","C1","C1","C2","C2","C2"))
y <- calcNormFactors(y)

#With filtering!
#keep <- rowSums(cpm(y)>1) >= 2
#y <- y[keep, , keep.lib.sizes=FALSE]

y$samples
plotMDS(y)
y <- estimateDisp(y)
et <- exactTest(y)
topgenes<-topTags(et,n=dim(countdata)[[1]])
plot(topgenes$table$logFC, -log10(topgenes$table$FDR), col=ifelse(topgenes$table$FDR<0.05,"red","black"),main="FDR volcano plot",xlab="log2FC",ylab="-log10(FDR)")
hist(topgenes$table$PValue,breaks=20,xlab="P Value",ylab="Frequency",main="P-value distribution")

normcnt <- round(cpm(y, normalized.lib.sizes=T))
rownames(normcnt)<-rownames(countdata)
topgenes$table <- merge(normcnt, topgenes$table, by.x="row.names", by.y="genes")
names(topgenes$table)[1] <- "Gene.ID"
topgenes$table <- topgenes$table[order(topgenes$table$FDR),]

write.table(topgenes$table, "edgeR_analysis.trapnell_normalized_counts.tab", sep="\t", quote = F, row.names = F)

#may need to install this library
library(pheatmap)
topgenes_50<-topTags(et, n=50)
#different types of sorting for output
#topgenes_50$table <- topgenes_50$table[order(topgenes_50$table$logFC),]
#topgenes_50$table <- topgenes_50$table[order(topgenes_50$table$logCPM),]
topgenes_50$table <- topgenes_50$table[order(topgenes_50$table$FDR),]
pheatmap(normcnt[as.integer(rownames(topgenes_50$table)),], scale="none", cluster_rows = F, cluster_cols = F, legend = T)

