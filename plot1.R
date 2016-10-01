##Read the data and subtract what we are interested.
Rdata<-read.table("./exdata_data_household_power_consumption/household_power_consumption.txt",sep=";", colClasses="character",header=TRUE)
Tdata<-subset(Rdata,Date %in% c("2/2/2007","1/2/2007"))
Tdata[,3:9]<-sapply(Tdata[,3:9],as.numeric)
Tdata[,1]<-as.Date(Tdata[,1],"%d/%m/%Y")

png(file="plot1.png")
hist(Tdata[,3],main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
dev.off()
