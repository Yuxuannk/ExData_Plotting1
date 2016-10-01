##Read the data and subtract what we are interested.
Rdata<-read.table("./exdata_data_household_power_consumption/household_power_consumption.txt",sep=";", colClasses="character",header=TRUE)
Tdata<-subset(Rdata,Date %in% c("2/2/2007","1/2/2007"))
Tdata[,3:9]<-sapply(Tdata[,3:9],as.numeric)
DT<-strptime(paste(Tdata[,1],Tdata[,2],sep=" "),"%d/%m/%Y %H:%M:%S")

png(file="plot1.png",width=480,height=480)
hist(Tdata[,3],main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
dev.off()
