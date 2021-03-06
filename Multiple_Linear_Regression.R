######################
Cars<-Toyoto_Corrola

Cars<-Cars[,-c(1,2,8)]

#Model Building
#Regression Model and Summary
model.car<-lm(Price~.,data = Cars)
summary(model.car)
car::vif(model.car)
#Diagnostic Plots:
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted
plot(model.car) 
#Residuals vs Regressors
library(car)
residualPlots(model.car)
#Added Variable Plots
avPlots(model.car)
#QQ plots of studentized residuals
qqPlot(model.car)
influenceIndexPlot(model.car) # Index Plots of the influence measures
####Iteration 1 
#Remove 77th observation
Cars1<-Cars[-222,]
model1<-lm(Price~.,data = Cars1)
summary(model1)
car::vif(model1)
plot(model1) 
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)
#iteration2
Cars2<-Cars[-c(222,961,602,957,992),]
model1<-lm(Price~.,data = Cars2)
summary(model1)

influenceIndexPlot(model1)
