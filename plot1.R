## Read the data
data_house <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
data_house$Date <- as.Date(data_house$Date,"%d/%m/%Y")
data_house <- data_house[data_house$Date=="2007-02-01" | data_house$Date == "2007-02-02",]

##PLOT1

png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))

hist(data_house$Global_active_power,main = "Global Active Power",
     col = "red", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", xlim = c(0,6),ylim = c(0,1200))
dev.off()