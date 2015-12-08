## Read the data
data_house <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
data_house$Date <- as.Date(data_house$Date,"%d/%m/%Y")
data_house <- data_house[data_house$Date=="2007-02-01" | data_house$Date == "2007-02-02",]

##PLOT1

png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))

plot(data_house$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)",
     xlab = NA,xaxt="n")
axis(1,at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
dev.off()