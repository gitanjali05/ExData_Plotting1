setwd("C:/Users/Gitu/Desktop/Elective/R Programming/ExData_Plotting1/")
df<-read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
gap <- as.numeric(subdata$Global_active_power)
dt <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("Plot2.png", width=480, height=480)
plot(dt, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()