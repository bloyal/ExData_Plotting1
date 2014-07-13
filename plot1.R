source("downloadData.R")
data<-downloadHouseholdData()

png("plot1.png", width=480, heigh=480)
hist(data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()