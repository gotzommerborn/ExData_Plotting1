# Plot_3

source("read_hpc_data.R")

png("plot3.png", width=480, height=480, units = "px")
plot(hpc_subset$DateTime, hpc_subset$Sub_metering_1, type="l", xlab="", ylab="Energy Submetering", col="black")
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_2, type="l", col="red")
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.0, col=c("black", "red", "blue"))
dev.off()