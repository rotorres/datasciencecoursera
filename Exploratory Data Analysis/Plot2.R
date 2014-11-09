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
ssdf<-ssdf[ssdf$Dia==c("Thursday","Friday","Saturday"),]


#plot2
png("plot2.png", width = 480, height = 480, units = "px", bg = "white")
plot(ssdf[,3], type="l", main="Global Active Power", ylab="Global Active Power(kilowatts)")
dev.off()