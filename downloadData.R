downloadHouseholdData <- function(){

        print("Downloading File")
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                      "exdata%2Fdata%2Fhousehold_power_consumption.zip")
        
        print("Unzipping File")
        unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")

        print("Loading file into data frame")
        householdPower <- read.table("household_power_consumption.txt", header=FALSE, sep=";", skip=66637, nrows=2880, na.strings="?")
        colnames(householdPower)<- c("Date","Time", "Global_active_power", "Global_reactive_power", "Voltage", 
        "Global_intensity", "Sub_metering_1", "Sub_metering_2")

        DateTime<- strptime(paste(householdPower$Date,householdPower$Time," "),"%d/%m/%Y %H:%M:%S")
        
        householdPower<- cbind(DateTime, householdPower[,3:8])
}