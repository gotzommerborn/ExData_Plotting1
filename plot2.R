# Plot_2

source("read_hpc_data.R")

png("plot2.png", width=480, height=480, units = "px")
plot(hpc_subset$DateTime, hpc_subset$Global_active_power, main="Global Active Power", type="l",  xlab="",ylab="Global Active Power (kilowatts)")
dev.off() 