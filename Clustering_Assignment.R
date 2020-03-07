######R Code on Clustering Assignment#######################

##Data Load

mydata1 <- read.csv("~/Data Science/Assignments/Clustering/crime_data.csv", header = T)

mydata <- scale(mydata1[,2:5])

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

