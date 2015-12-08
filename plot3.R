## Read the data
data_house <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
data_house$Date <- as.Date(data_house$Date,"%d/%m/%Y")
data_house <- data_house[data_house$Date=="2007-02-01" | data_house$Date == "2007-02-02",]

##PLOT1

png(filename = "plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))

plot(data_house$Sub_metering_1,type = "l",ylab = "Energy sub metering",ylim = c(0,38),
     xlab = NA,xaxt="n",col="black")
par(new=TRUE)
plot(data_house$Sub_metering_2,type = "l",ylab = "Energy sub metering",ylim = c(0,38),
     xlab = NA,xaxt="n",col="red")
par(new=TRUE)
plot(data_house$Sub_metering_3,type = "l",ylab = "Energy sub metering",ylim = c(0,38),
     xlab = NA,xaxt="n",col = "Blue")
axis(1,at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
legend(x = 1850, y = 39.5,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lty = c(1,1,1))


dev.off()