install.packages("gdata")
library(gdata)

install.packages("lubridate")
library(lubridate)

dataCsv<-read.table("household_power_consumption.txt", TRUE, ";")
ss<-cbind(dataCsv, as.numeric(getYear(as.Date(dataCsv[,1],"%d/%m/%Y"))))
ss<-cbind(ss, weekdays(as.Date(dataCsv[,1],"%d/%m/%Y")))

names(ss)[10]<-"Ano"
names(ss)[11]<-"Dia"

ssdf<-data.frame(ss)

ssdf[,10]<-as.numeric(as.character(ssdf[,10]))
ssdf[,3]<-as.numeric(as.character(ssdf[,3]))
ssdf[,4]<-as.numeric(as.character(ssdf[,4]))
ssdf[,9]<-as.numeric(as.character(ssdf[,9]))
ssdf[,8]<-as.numeric(as.character(ssdf[,8]))
ssdf[,7]<-as.numeric(as.character(ssdf[,7]))
ssdf<-ssdf[ssdf$Ano>=2007,]


#plot4
png("plot4.png", width = 480, height = 480, units = "px", bg = "white")
par(mfrow=c(2,2))
plot(ssdf[,3], type="l", ylab="Global Active Power", col="black")
plot(ssdf[,5], type="l", ylab="Voltage", xlab="Datetime", col="black")

plot(ssdf[,7], type="l", ylab="Energy Sub Meetering", col="black")
lines(ssdf[,8], col="blue")
lines(ssdf[,9], col="red")

plot(ssdf[,4], type="l", ylab="Global Reactive Power", xlab="Datetime", col="black")

dev.off()