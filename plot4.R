source("downloadData.R")
data<-downloadHouseholdData()

png("plot4.png", width=480, heigh=480)

par(mfrow=c(2,2))
plot(data$DateTime,data$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(data$DateTime,data$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(data$DateTime, data$Sub_metering_1, col="black", type="l", xlab="", ylab="Energy sub metering")
points(data$DateTime, data$Sub_metering_2, col="red", type="l")
points(data$DateTime, data$Sub_metering_3, col="blue", type="l", xlab="", ylab="Energy sub metering")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", lty=1, col= c("black", "red", "blue"))

plot(data$DateTime,data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_ower")

dev.off()