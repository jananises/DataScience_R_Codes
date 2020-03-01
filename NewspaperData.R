#Regression Equation
#Syntax model <- lm(y~x, data=data set name)

model <-lm(sunday~daily, data = NewspaperData)
summary(model)
predict(model)

new <- data.frame(daily=c(200,250,300))
pred <- predict(model, newdata = new)
print(pred)

#finaldata <- data.frame(NewspaperData, pred, "Error"=NewspaperData$sunday)

boxplot(NewspaperData$sunday,NewspaperData$daily, col="Blue")

dotchart(NewspaperData$daily)

#Regression Analysis
newspaper_data <- NewspaperData
newspaper_data1<-newspaper_data[,-1]
attach(newspaper_data1) # no need to repeat the dataset
summary(newspaper_data[,-1])
#################################################

dotchart(daily, labels=row.names(NewspaperData$Newspaper))
dotchart(NewspaperData$sunday, labels=row.names(NewspaperData$Newspaper))

boxplot(NewspaperData$daily,col="dodgerblue4",NewspaperData$sunday)

plot(NewspaperData$daily, NewspaperData$sunday, main="scatter Plot", col="dodgerblue4", 
     col.main="dodgerblue4",
     col.lab="dodgerblue4",
     xlab="Daily Circulations",
     ylab="Sunday Circulations", pch=20)

reg.model <- lm(sunday~daily, data=newspaper_data)
summary(reg.model)

#plotting best fit line
plot(daily,sunday, main="Line of Best Fit", col="dodgerblue4", col.main = "dodgerblue4")
abline(reg.model, col="red")
segments(daily, sunday, daily, predict(reg.model))

predict(reg.model, newdata=data.frame(daily=c(50,200)))
