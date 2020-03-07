######R Code on Hierrchical Clustering#####################
##Data Load
mydata1 <- read.csv("~/Data Science/Code/DataSet/Universities.csv", header=T)

#########################
mydata <- scale(mydata1[,2:7])

d <- dist(mydata, method = "euclidean") #Computing the distance Matrix"
d

fit <- hclust(d, method = "average") #Building algorithm

plot(fit)  #display dendogram

groups <- cutree(fit, k=4) #cut tree into 4 clusters

#draw dendogram with red borders around 5 clusters

rect.hclust(fit, k=4, border = "red")

#Attach   the cluster numbers to Uni
clusters=data.frame('Uni'=mydata1[,1], 'Cluster'=groups)
clusters   #Display Clusters


##########################################################################
d <- dist(mydata, method = "manhattan") #Computing the distance Matrix using Manhattan distance" 
d
fit <- hclust(d, method = "centroid") #Building algorithm using Centroid

plot(fit)  #display dendogram

groups <- cutree(fit, k=4) #cut tree into 5 clusters

#draw dendogram with red borders around 6 clusters

rect.hclust(fit, k=5, border = "red")

#Attach   the cluster numbers to Uni
clusters=data.frame('Uni'=mydata1[,1], 'Cluster'=groups)
clusters   #Display Clusters