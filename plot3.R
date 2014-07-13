source("downloadData.R")
data<-downloadHouseholdData()

png("plot3.png", width=480, heigh=480)

plot(data$DateTime, data$Global_active_power, type="l", xlab='', ylab="Global Active Power (kilowatts)")

dev.off()