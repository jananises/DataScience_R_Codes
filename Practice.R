data("airquality")
airquality<-datasets::airquality
head(airquality, n=10)
tail(airquality, n=12)
airquality[,c(1,2)]
airquality$Temp
summary(airquality$Temp)
summary(airquality)
