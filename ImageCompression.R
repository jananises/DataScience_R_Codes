########################Image Compression Algorithm######################################

library(jpeg)
library(imager)
library(pixmap)

cat <- readJPEG('~/Data Science/Code/DataSet/cat.jpg')


ncol(cat)
nrow(cat)

r <- cat[,,1]
g <- cat[,,2]
b <- cat[,,3]


cat.r.pca <- prcomp(r, center = FALSE)
cat.g.pca <- prcomp(g, center = FALSE)
cat.b.pca <- prcomp(b, center = FALSE)

rgb.pca <- list(cat.r.pca, cat.g.pca, cat.b.pca)
pca.img <- sapply(rgb.pca, function(j) {  compressed.img <- j$x[,1:100] %*% t(j$rotation[,1:100])}, simplify = 'array')
a<-pixmap::pixmapRGB(pca.img)
windows()
plot(a)
