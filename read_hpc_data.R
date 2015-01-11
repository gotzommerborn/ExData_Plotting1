# init
# set working directory accordingly 
setwd("D:/Users/GOMMERBORN/datasciencecoursera/Exploratory data analysis") 

# read data, decode missing value symbol "?")

## comment: abbreviation hpc stands for household_power_consumption

hpc_source <- read.table("household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
as.Date(hpc_source$Date, "%m/%d/%y")

# only use data needed

hpc_subset <- subset(hpc_source, ((hpc_source$Date == "1/2/2007") | (hpc_source$Date == "2/2/2007")))
rm(hpc_source) # remove memory used for hpc_source

# add data time column 
x <- paste(hpc_subset$Date, hpc_subset$Time)
hpc_subset$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")