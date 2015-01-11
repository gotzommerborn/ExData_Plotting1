# Plot_1

source("read_hpc_data.R")

hist(hpc_subset$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480, units = "px")
dev.off()