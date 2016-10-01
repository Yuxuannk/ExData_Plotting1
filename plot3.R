##Read the data and subtract what we are interested.
Rdata<-read.table("./exdata_data_household_power_consumption/household_power_consumption.txt",sep=";", colClasses="character",header=TRUE)
Tdata<-subset(Rdata,Date %in% c("2/2/2007","1/2/2007"))
Tdata[,3:9]<-sapply(Tdata[,3:9],as.numeric)
Tdata[,1]<-as.Date(Tdata[,1],"%d/%m/%Y")

png(file="plot3.png")
plot(Tdata[,7],type="l",col="black",ylab="Energy sub metering",xlab="")
points(Tdata[,8],type="l",col="red")
points(Tdata[,9],type="l",col="blue")
legend("topright",pch="-",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()