setwd("C:/Users/Gitu/Desktop/Elective/R Programming/ExData_Plotting1/")
df<-read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
gap <- as.numeric(subdata$Global_active_power)
dt <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
grp<- as.numeric(subdata$Global_reactive_power)
volt<- as.numeric(subdata$Voltage)
subMetering1 <- as.numeric(subdata$Sub_metering_1)
subMetering2 <- as.numeric(subdata$Sub_metering_2)
subMetering3 <- as.numeric(subdata$Sub_metering_3)

png("plot4.png", width=480, height=480)

par(mfrow = c(2, 2)) 

plot(dt, gap, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(dt, volt, type="l", xlab="datetime", ylab="Voltage")

plot(dt, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(dt, subMetering2, type="l", col="red")
lines(dt, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(dt, grp, type="l", xlab="datetime", ylab="Global_reactive_power")