getwd()
setwd("C:\\Users\\luv\\Desktop\\Online Courses\\DATA SCIENCE\\Exploratory Analysis\\exdata_data_household_power_consumption")
library(dplyr)
library(lubridate)
data<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)


input_data<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
head(input_data)
dim(input_data) 
day("1/2/2007")
png("plot2.png")
plot(as.numeric(input_data$Global_active_power),ylab = "Global Active Power(Kilowatts)",
                type = "l",xaxt="n")
axis(1,at=c(0,1440,2880) ,labels = c("Thursday","Friday","Saturday"),)
?axis
dev.off()

