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

#plot2
png("plot2.png", width = 480, height = 480, units = "px", bg = "white")
plot(dataCsv[,3], type="l", axes=FALSE, xlab="", ylab="")
axis(1, c(0,500,950), c("Thursday","Friday","Saturday"))
axis(2)
title(ylab="Global Active Power(kilowatts)")
box()
dev.off()