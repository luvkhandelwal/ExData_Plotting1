getwd()
setwd("C:\\Users\\luv\\Desktop\\Online Courses\\DATA SCIENCE\\Exploratory Analysis\\exdata_data_household_power_consumption")
library(dplyr)
library(lubridate)
data<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)


input_data<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
head(input_data)
dim(input_data) 
png("plot2.png")
plot(as.numeric(input_data$Sub_metering_1),ylab = "Global Active Power(Kilowatts)",
                type = "l",xaxt="n",col="purple")
lines(as.numeric(input_data$Sub_metering_2),col="orange" )
lines(as.numeric(input_data$Sub_metering_3),col="blue")
axis(1,at=c(0,1440,2880) ,labels = c("Thursday","Friday","Saturday"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("purple","orange","blue"),lty = 1,ncol = 1,cex = 0.7)
dev.off()

