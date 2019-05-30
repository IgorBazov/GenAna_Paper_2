library(data.table)
library(matrixStats)
library(stats)
library(gplots)
library(DESeq2)
library(ggplot2)
library(RColorBrewer)
library(pheatmap)

# read htseq data

cs15_fore <- read.table("C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/cs15_fore_htseq_count.txt", head=FALSE)
cs16_fore <- read.table("C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/cs16_fore_htseq_count.txt", head=FALSE)
cs17_fore <- read.table("C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/cs17_fore_htseq_count.txt", head=FALSE)
cs15_hind <- read.table("C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/cs15_hind_htseq_count.txt", head=FALSE)
cs16_hind <- read.table("C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/cs16_hind_htseq_count.txt", head=FALSE)
cs17_hind <- read.table("C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/cs17_hind_htseq_count.txt", head=FALSE)

# rename columns

names(cs15_fore)[2] <- "FL_15"
names(cs15_hind)[2] <- "HL_15"
names(cs16_fore)[2] <- "FL_16"
names(cs16_hind)[2] <- "HL_16"
names(cs17_fore)[2] <- "FL_17"
names(cs17_hind)[2] <- "HL_17"

# merge data

countData <- merge(cs15_fore,cs15_hind,by="V1")
countData <- merge(countData,cs16_fore,by="V1")
countData <- merge(countData,cs16_hind,by="V1")
countData <- merge(countData,cs17_fore,by="V1")
countData <- merge(countData,cs17_hind,by="V1")

names(countData)[1] <- "Genes"

# remove data not used

countData <- countData[-c(1,2,3,4,5),]
countData <- data.frame(row.names =countData[,1], FLCS15=countData[2], FLCS16=countData[3], FLCS17=countData[4], HLCS15=countData[5], HLCS16=countData[6], HLCS17=countData[7])

# change gene names

gene_name <- read.csv2("C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/gene_names.csv", header = TRUE, sep=",")

print(gene_name$name == row.names(countData))

countData <- cbind(countData,gene_name$Gene)

rownames(countData) = make.names(countData$`gene_name$Gene`, unique = TRUE)
countData <- countData[,-7]

# prepare data for DESeq2
# remove genes with no reads

countData_no0 <- countData[apply(countData[,-1], 1, function(x) !all(x==0)),]

sampleCondition <- c("FL_15","FL_16","FL_17","HL_15","HL_16","HL_17")

sampleLayout <- read.table("C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/sampleLayout", head=TRUE)

# run DESeq2 by tissue

dds <- DESeqDataSetFromMatrix(countData = countData_no0,
                              colData = sampleLayout,
                              design = ~ tissue)

dds <- DESeq(dds)

# results table

res_tis_sel3 <- results(dds)
res_tis_sel3 <- results(dds, contrast=c("tissue","Forelimb","Hindlimb"))

# names of effects

resultsNames(dds)

# order by p-value

resOrdered <- res_tis_sel3[order(res_tis_sel3$pvalue),]

plotMA(res_tis_sel3, ylim=c(-7,3))

resLFC <- lfcShrink(dds, coef=2, res==res)

write.csv(as.data.frame(resOrdered), 
          file="C:/Users/Pinkhammer/Documents/VT-19/GenAn/P2/HTseq/tissue_fore_hind_2.csv")

# make heatmaps

rld <- rlog(dds, blind=FALSE)
select <- order(rowMeans(counts(dds,normalized=FALSE)),
                decreasing=TRUE)[20:50]
df <- as.data.frame(colData(dds)[,c("tissue", "stage")])
pheatmap(assay(rld)[select,], cluster_rows=TRUE, show_rownames=TRUE,
         cluster_cols=TRUE, annotation_col=df)

### Plot PCA

vsd = varianceStabilizingTransformation(dds)


#plotPCA(vsd, intgroup=c("tissue", "stage"))
pcaData <- plotPCA(vsd, intgroup=c("tissue", "stage"), returnData=TRUE)
percentVar <- round(100 * attr(pcaData, "percentVar"))
ggplot(pcaData, aes(PC1, PC2, color=tissue, shape=stage)) +
  geom_point(size=3) +
  xlab(paste0("PC1: ",percentVar[1],"% variance")) +
  ylab(paste0("PC2: ",percentVar[2],"% variance")) + 
  coord_fixed()


select <- order(rowMeans(counts(dds,normalized=TRUE)),
                decreasing=TRUE)[20:50]
df <- as.data.frame(colData(dds)[,c("tissue","stage")])
pheatmap(assay(vsd)[select,], cluster_rows=TRUE, show_rownames=TRUE,
         cluster_cols=FALSE, annotation_col=df)
clustering_distance_rows = "correlation"

# heatmap of this distance matrix

sampleDists <- dist(t(assay(vsd)))
sampleDistMatrix <- as.matrix(sampleDists)
rownames(sampleDistMatrix) <- paste(vsd$tissue, vsd$stage, sep="-")
colors <- colorRampPalette( rev(brewer.pal(7, "Purples")) )(255)
pheatmap(sampleDistMatrix,
         clustering_distance_rows=sampleDists,
         clustering_distance_cols=sampleDists,
         col=colors)