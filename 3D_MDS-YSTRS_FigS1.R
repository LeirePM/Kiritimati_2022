
## 3D non-metric multidimensional scaling plot representing Rst distances of Y-STR haplotypes (Figure S1).

# Install and load packages rgl.
install.packages("rgl", dependencies = TRUE)
library (rgl)


# Load file with the MDS coordinates. 
#data <- read.xlsx("~/R/Kiritimati/data/KIR_Ystr_MDS.scores.xlsx", sheetIndex = 1, header = TRUE, startRow = 1)
data <- read.csv2("~/R/Kiritimati/data/KIR_Ystr_NMDS.scores.csv", dec = ".")


# Draw 3D plot. 
plot3d(data,
       xlab = "", 
       ylab = "",
       zlab = "",
       type = "h",
       col= rainbow(21), 
       lwd= 1.5) 

spheres3d(data,radius=0.3,col=rainbow(21)) # Change the size of the spheres.

grid3d(side="z",at=list(z=0),col="lightgray",lwd=1,lty=1,n=6) # Place the grid in axis-z=0.

text3d(data,text=data$Name,adj=3 ,pos= 1, font=7,cex=1.1) # Text size and position.

snapshot3d(filename="3Dplot-NMDS.png",fmt='png') #Save a snapshot of the plot as a png file. 
