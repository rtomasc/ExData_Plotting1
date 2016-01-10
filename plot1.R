#PART 0. Downloading the zip file and getting data. Already done. 

#fileUrl<-"https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
#download.file(FileUrl, destfile="household_power_consumption.zip")
#downloaded<-date()
# Look at the file name in Houshold.zip. Get the file names to extract them. 
#unzip("household_power_consumption.zip", files="household_power_consumption/household_power_consumption.txt")
#Loading libraries
library(data.table)
library(dplyr)
#Reading the whole txt (csv)
HouseholdTotalData <- read.csv("household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
#Convert Date and Time to character and paste
HouseholdTotalData$DateC<- as.character(HouseholdTotalData$Date)
HouseholdTotalData$TimeC<- as.character(HouseholdTotalData$Time)
#Extracting two days
HouseholdData1<-HouseholdTotalData[HouseholdTotalData$Date=="1/2/2007",]
HouseholdData2<-HouseholdTotalData[HouseholdTotalData$Date=="2/2/2007",]
HouseholdData<-rbind(HouseholdData1, HouseholdData2)
#adding Date in POSIXlt --> NewDate
HouseholdData$DateTimeC<- paste(HouseholdData$DateC, HouseholdData$TimeC, sep=" ")
HouseholdData$NewDate=strptime(HouseholdData$DateTimeC, "%d/%m/%Y %H:%M:%S")
#constructing weekday variable based on $NewDate
HouseholdData$weekday<-weekdays(HouseholdData$NewDate, abbreviate=TRUE)


#PLOT 1
par(mfrow = c(1,1))
png(filename = "plot1.png",width = 480, height = 480, units = "px")
hist(HouseholdData$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()




