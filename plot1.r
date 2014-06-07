setwd("C:/Users/Rahul Agarwal/Desktop/UBUNTU/Data/Learning/Signature Track -Data Science/4. Assignments)
colclasses=c("character","character", "numeric", "numeric","numeric", "numeric", "numeric","numeric", "numeric")
data<-read.table("household_power_consumption.txt",sep=';',header=TRUE,colClasses=colclasses,na.strings="?")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
subdata<-subset(data,Date=='2007-02-01'|Date=='2007-02-02')
png(filename='plot1.png')
hist(subdata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
