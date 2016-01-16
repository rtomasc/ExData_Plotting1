#PART 0. Downloading the zip file and getting data.

fileUrl<-"https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
download.file(FileUrl, destfile="household_power_consumption.zip")
#downloaded<-date()
#Look at the file name in Houshold.zip. Get the file names to extract them. 
unzip("household_power_consumption.zip", files="household_power_consumption.txt")
#Loading libraries
library(data.table)
library(dplyr)
#Reading the whole txt (it's in csv format)
HouseholdTotalData <- read.csv("household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", stringsAsFactors = FALSE)
#Extracting two days to HouseholdData
HouseholdData<-HouseholdTotalData[HouseholdTotalData$Date=="1/2/2007" | HouseholdTotalData$Date=="2/2/2007", ]
#adding Date in POSIXlt --> NewDate
#HouseholdData$DateTimeC<- paste(HouseholdData$Date, HouseholdData$Time, sep=" ")
HouseholdData$NewDate=strptime(paste(HouseholdData$Date, HouseholdData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
#adding weekday
HouseholdData$weekday<-weekdays(HouseholdData$NewDate, abbreviate=TRUE)



#PLOT 4
par(mfrow = c(2,2), mar= c(4,4,2,1), oma= c(0,0,2,0))

#Adding plots to the screen
#4 plots. First = plot 2. 3rd = plot 3
 #1rst plot, == plot2
 plot(HouseholdData$NewDate, HouseholdData$Global_active_power, ylab="Global Active Power (kilowatts)", xlab=" ", pch=NA_integer_)
  lines(HouseholdData$NewDate, HouseholdData$Global_active_power)
  #2nd plot. Voltage by date
  plot(HouseholdData$NewDate, HouseholdData$Voltage, ylab="Voltage", xlab="datetime", pch=NA_integer_)
  lines(HouseholdData$NewDate, HouseholdData$Voltage)
  #3rd plot. == plot 3 (see plot3.R)
  plot(HouseholdData$NewDate, HouseholdData$Sub_metering_1, ylab="Energy sub metering", xlab=" ", type="l")
  #Adding lines for Sub_metering 2 and 3
  lines(HouseholdData$NewDate, HouseholdData$Sub_metering_2, col="red")
  lines(HouseholdData$NewDate, HouseholdData$Sub_metering_3, col="blue")
  #Adding legend
  legend("topright", lwd=1, col= c("black", "red", "blue"), legend = c("Sub_metering 1", "Sub_metering 2", "Sub_metering 3"))
    #4th. Global reactive power by date
  plot(HouseholdData$NewDate, HouseholdData$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", pch=NA_integer_)
  lines(HouseholdData$NewDate, HouseholdData$Global_reactive_power)
 dev.copy(png, file ="plot4.png", width = 480, height = 480, units = "px")
dev.off()




