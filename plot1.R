setwd("C:/Users/Gitu/Desktop/Elective/R Programming/ExData_Plotting1/")
df<-read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
gap <- as.numeric(subdata$Global_active_power)
png("Plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")