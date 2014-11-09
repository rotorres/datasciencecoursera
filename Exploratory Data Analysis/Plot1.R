install.packages("gdata")
library(gdata)

dataCsv<-read.table("household_power_consumption.txt", TRUE, ";")
ss<-cbind(dataCsv, as.numeric(getYear(as.Date(dataCsv[,1],"%d/%m/%Y"))))

names(ss)[10]<-"Ano"

ss<-subset(ss,ss["Ano"] >= 2007)

ssdf<-data.frame(ss)
ssdf[,3]<-as.numeric(as.character(ssdf[,3]))

#plot1
png("plot1.png", width = 480, height = 480, units = "px", bg = "white")
hist(ssdf[,3],freq=TRUE,main="Global Active Power", col="red", xlab="Global Active Power(kilowatts)")
dev.off()