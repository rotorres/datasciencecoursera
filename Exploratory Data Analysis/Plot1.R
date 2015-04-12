install.packages("gdata")
library(gdata)

dataCsv<-data.frame(read.table("household_power_consumption.txt", TRUE, ";"))
dataCsv<-dataCsv[as.numeric(getYear(as.Date(dataCsv[,1],"%d/%m/%Y")))==2007,]
dataCsv<-dataCsv[as.numeric(getMonth(as.Date(dataCsv[,1],"%d/%m/%Y")))==2,]
dataCsv<-dataCsv[as.numeric(getDay(as.Date(dataCsv[,1],"%d/%m/%Y")))<=2,]

dataCsv[,3]<-as.numeric(as.character(dataCsv[,3]))

#plot1
png("plot1.png", width = 480, height = 480, units = "px", bg = "white")
hist(dataCsv[,3],freq=TRUE,main="Global Active Power", col="red", xlab="Global Active Power(kilowatts)")
dev.off()
