install.packages("gdata")
library(gdata)

install.packages("lubridate")
library(lubridate)

dataCsv<-data.frame(read.table("household_power_consumption.txt", TRUE, ";"))
dataCsv<-dataCsv[as.numeric(getYear(as.Date(dataCsv[,1],"%d/%m/%Y")))==2007,]
dataCsv<-dataCsv[as.numeric(getMonth(as.Date(dataCsv[,1],"%d/%m/%Y")))==2,]
dataCsv<-dataCsv[as.numeric(getDay(as.Date(dataCsv[,1],"%d/%m/%Y")))<=2,]
dataCsv<-dataCsv[weekdays(as.Date(dataCsv[,1],"%d/%m/%Y"))==c("Thursday","Friday","Saturday"),]

dataCsv[,3]<-as.numeric(as.character(dataCsv[,3]))
dataCsv[,7]<-as.numeric(as.character(dataCsv[,7]))
dataCsv[,8]<-as.numeric(as.character(dataCsv[,8]))
dataCsv[,9]<-as.numeric(as.character(dataCsv[,9]))

#plot3
png("plot3.png", width = 480, height = 480, units = "px", bg = "white")
plot(dataCsv[,7], type="l", ylab="Energy sub meetering", xlab="", col="black")
lines(dataCsv[,8],col="red")
lines(dataCsv[,9],col="blue")
legend("topright", names(dataCsv[,7:9]), col=c("black","red","blue"), lty=1)
dev.off()