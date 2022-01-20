
# PCA plots are drawn using factoextra package.
install.packages("factoextra", dependencies = TRUE)
library(factoextra)

## mtDNA PCA plot of Kiritimati and other populations from SEA and Oceania (Figure 2).

# Load data and tidy the data.frame.
KIR.mt.pops <- read.delim("~/R/Kiritimati/data/KIR_mt_pops.dat")
KIR.mt.pops.names <-as.array(KIR.mt.pops$Population)
rownames(KIR.mt.pops) <- KIR.mt.pops.names
KIR.mt.pops$Population <- NULL
KIR.mt.pops$X <- NULL

# Load file with populations organized by regions.
KIR.mt.pops.region <- read.delim("~/R/Kiritimati/data/KIR_mt_pops.region.dat")

# Calculate PCA.
KIR.mt.pops.pca <- prcomp(KIR.mt.pops, center = TRUE, scale = FALSE)

# Create a personalized color pallete (n=11).
my_pal11 <- c("darkred", "red2", "violetred1", "purple2", "darkblue", "steelblue2", "lightslategray", "springgreen4", "green3", "gold2", "sienna2")

# Draw PCA plot using "factoextra" package.
#install.packages("factoextra", dependencies = TRUE)
#library(factoextra)
fviz_pca_ind(KIR.mt.pops.pca, col.ind = KIR.mt.pops.region$Region2, palette = my_pal11, repel = TRUE, mean.point = FALSE, pointshape = 16, legend.title = "Regions")


## mtDNA PCA plot of Kiritimati and other grouped populations from SEA and Oceania (Figure 3).

# Load data and tidy the data.frame.
KIR.mt.group <- read.delim("~/R/Kiritimati/data/KIR_mt_group.dat")
KIR.mt.group.names <-as.array(KIR.mt.group$Population)
rownames(KIR.mt.group) <- KIR.mt.group.names
KIR.mt.group$Population <- NULL
KIR.mt.group$X <- NULL

# Load file with populations organized by regions.
KIR.mt.group.region <- read.delim("~/R/Kiritimati/data/KIR_mt_group.region.dat")

# Calculate PCA.
KIR.mt.group.pca <- prcomp(KIR.mt.group, center = TRUE, scale = FALSE)

# Create a personalized color pallete (n=12).
my_pal12 <- c("darkred", "red2", "maroon3", "violetred1", "purple2", "darkblue", "steelblue2", "lightslategray", "springgreen4", "green3", "gold2", "sienna2")

# Draw PCA plot using "factoextra" package.
#install.packages("factoextra", dependencies = TRUE)
#library(factoextra)
fviz_pca_ind(KIR.mt.group.pca, col.ind = KIR.mt.group.region$Region2, palette = my_pal12, repel = TRUE, mean.point = FALSE, pointshape = 16, legend.title = "Regions")

