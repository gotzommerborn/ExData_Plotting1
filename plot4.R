# Plot_4

source("read_hpc_data.R")

png("plot4.png", width=480, height=480, units = "px")
par(mfrow = c(2, 2))
plot(hpc_subset$DateTime, hpc_subset$Global_active_power, type="l",  xlab="",ylab="Global Active Power (kilowatts)")
plot(hpc_subset$DateTime, hpc_subset$Voltage, type="l", xlab="DateTime", ylab="Voltage",  lty=1, lwd=0.5)
plot(hpc_subset$DateTime, hpc_subset$Sub_metering_1, type="l", xlab="", ylab="Energy Submetering", col="black",lty=1, lwd=0.5)
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_2, type="l", col="red",lty=1, lwd=0.5)
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_3, type="l", col="blue",lty=1, lwd=0.5)
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue", lty=1, lwd=2.0,))
plot(hpc_subset$DateTime, hpc_subset$Global_reactive_power, type="l", xlab="DateTime", ylab="Global_reactive_power",  lty=1, lwd=0.5)
dev.off()