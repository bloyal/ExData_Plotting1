source("downloadData.R")
data<-downloadHouseholdData()

png("plot3.png", width=480, heigh=480)

plot(data$DateTime, data$Sub_metering_1, col="black", type="l", xlab="", ylab="Energy sub metering")
points(data$DateTime, data$Sub_metering_2, col="red", type="l")
points(data$DateTime, data$Sub_metering_3, col="blue", type="l", xlab="", ylab="Energy sub metering")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col= c("black", "red", "blue"))

dev.off()