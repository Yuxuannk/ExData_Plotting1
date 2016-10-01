##Read the data and subtract what we are interested.
Rdata<-read.table("./exdata_data_household_power_consumption/household_power_consumption.txt",sep=";", colClasses="character",header=TRUE)
Tdata<-subset(Rdata,Date %in% c("2/2/2007","1/2/2007"))
Tdata[,3:9]<-sapply(Tdata[,3:9],as.numeric)
DT<-strptime(paste(Tdata[,1],Tdata[,2],sep=" "),"%d/%m/%Y %H:%M:%S")

png(file="plot3.png",width=480,height=480)
plot(DT,Tdata[,7],type="l",col="black",ylab="Energy sub metering",xlab="")
points(DT,Tdata[,8],type="l",col="red")
points(DT,Tdata[,9],type="l",col="blue")
legend("topright",pch="-",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()