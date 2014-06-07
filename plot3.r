setwd("C:/Users/Rahul Agarwal/Desktop/UBUNTU/Data/Learning/Signature Track -Data Science/4. Assignments)
colclasses=c("character","character", "numeric", "numeric","numeric", "numeric", "numeric","numeric", "numeric")
data<-read.table("household_power_consumption.txt",sep=';',header=TRUE,colClasses=colclasses,na.strings="?")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
data$Time<-strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S")
subdata<-subset(data,Date=='2007-02-01'|Date=='2007-02-02')
png(filename='plot3.png')
x <- subdata$Time 
y1 <- subdata$Sub_metering_1 
par(col="black")
plot(x, y1, type="n", ylab="Energy sub metering",xlab="") 
lines(x, y1) 
y2 <- subdata$Sub_metering_2 
par(col="red")
lines(x, y2) 
y3 <- subdata$Sub_metering_3 
par(col="blue")
lines(x, y3) 
par(col="black")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
lty=c(1,1), # gives the legend appropriate symbols (lines)
lwd=c(2.5,2.5),col=c("black","red","blue"))
dev.off()
