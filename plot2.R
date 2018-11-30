## Read the data from the Data folder which should be in the current working directory
Filedata <- "./data/household_power_consumption.txt"
data <- read.table(Filedata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
## Subset the data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##convert the Date and Time variables 
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
## prepare to create a png file
png("plot2.png", width=480, height=480)
##Create a line plot
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
##close the device
dev.off()
