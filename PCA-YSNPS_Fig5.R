
## Y chromosome PCA plot of Kiritimati and other populations from SEA and Oceania (Figure 5).

# Load data and tidy the data.frame.
KIR.Y.pops <- read.delim("~/R/Kiritimati/data/KIR_Y_pops.dat")
KIR.Y.pops.names <-as.array(KIR.Y.pops$Population)
rownames(KIR.Y.pops) <- KIR.Y.pops.names
KIR.Y.pops$Population <- NULL
KIR.Y.pops$X <- NULL

# Load file with populations organized by regions.
KIR.Y.pops.region <- read.delim("~/R/Kiritimati/data/KIR_Y_pops.region.dat")

# Calculate PCA.
KIR.Y.pops.pca <- prcomp(KIR.Y.pops, center = TRUE,scale. = FALSE)

# Create a personalized color pallete (n=11).
my_pal11 <- c("darkred", "red2", "violetred1", "purple2", "darkblue", "steelblue2", "lightslategray", "springgreen4", "green3", "gold2", "sienna2")

# Draw PCA plot using "factoextra" package.
install.packages("factoextra", dependencies = TRUE)
library(factoextra)
fviz_pca_ind(KIR.Y.pops.pca, col.ind = KIR.Y.pops.region$Region2, palette = my_pal11, repel = TRUE, mean.point = FALSE, pointshape = 16, legend.title = "Regions")

