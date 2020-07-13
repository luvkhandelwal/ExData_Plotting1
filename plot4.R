getwd()
setwd("C:\\Users\\luv\\Desktop\\Online Courses\\DATA SCIENCE\\Exploratory Analysis\\exdata_data_household_power_consumption")
library(dplyr)
library(lubridate)
data<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)


input_data<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
head(input_data)
dim(input_data) 
png("plot4.png")
par(mfrow=c(2,2))

#plot 4.1
plot(as.numeric(input_data$Global_active_power),ylab = "Global Active Power(Kilowatts)",
     type = "l",xaxt="n")
axis(1,at=c(0,1440,2880) ,labels = c("Thursday","Friday","Saturday"))

#plot 4.2
plot(as.numeric(input_data$Voltage),ylab = "Voltage",xlab = "datetime",
     type = "l",xaxt="n")
axis(1,at=c(0,1440,2880) ,labels = c("Thursday","Friday","Saturday"))


#plot 4.3
plot(as.numeric(input_data$Sub_metering_1),ylab = "Global Active Power(Kilowatts)",
     type = "l",xaxt="n",col="purple")
lines(as.numeric(input_data$Sub_metering_2),col="orange" )
lines(as.numeric(input_data$Sub_metering_3),col="blue")
axis(1,at=c(0,1440,2880) ,labels = c("Thursday","Friday","Saturday"))
par(cex=0.5)
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("purple","orange","blue"),lty = 1,bty = "n",y.intersp = 0.2,seg.len = 0.5)

#plot 4.4
plot(as.numeric(input_data$Global_reactive_power),ylab = "Global_reactive_power",
     xlab = "datetime",type = "l",xaxt="n")
axis(1,at=c(0,1440,2880) ,labels = c("Thursday","Friday","Saturday"))

dev.off()

