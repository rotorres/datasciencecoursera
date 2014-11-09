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

ssdf[,9]<-as.numeric(as.character(ssdf[,9]))
ssdf[,8]<-as.numeric(as.character(ssdf[,8]))
ssdf[,7]<-as.numeric(as.character(ssdf[,7]))
ssdf<-ssdf[ssdf$Dia==c("Thursday","Friday","Saturday"),]


#plot3
png("plot3.png", width = 480, height = 480, units = "px", bg = "white")
plot(ssdf[,7], type="l", main="Sub Meetering", ylab="Energy sub meetering", col="black")
lines(ssdf[,8],col="blue")
lines(ssdf[,9],col="red")
dev.off()