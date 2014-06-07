setwd("C:/Users/Rahul Agarwal/Desktop/UBUNTU/Data/Learning/Signature Track -Data Science/4. Assignments)
colclasses=c("character","character", "numeric", "numeric","numeric", "numeric", "numeric","numeric", "numeric")
data<-read.table("household_power_consumption.txt",sep=';',header=TRUE,colClasses=colclasses,na.strings="?")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
data$Time<-strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S")
subdata<-subset(data,Date=='2007-02-01'|Date=='2007-02-02')
png(filename='plot2.png')
x <- subdata$Time 
y <- subdata$Global_active_power
plot(x, y, type="n", ylab="Global Active Power(kilowatts)",xlab="") 
lines(x, y) 
dev.off()
