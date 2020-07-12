getwd()
setwd("C:\\Users\\luv\\Desktop\\Online Courses\\DATA SCIENCE\\Exploratory Analysis\\exdata_data_household_power_consumption")
library(dplyr)
library(lubridate)
data<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)


input_data<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
head(input_data)
dim(input_data)  
png("plot1.png")
hist(as.numeric(input_data$Global_active_power),col = "red",
     xlab = "Global Active Power",main = "Global Active Power", 
     ylab = "Frequency")
dev.off()

