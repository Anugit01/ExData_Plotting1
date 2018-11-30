## Read the data from the Data folder which should be in the current working directory
fileData <- "./Data/household_power_consumption.txt"

data <- read.table(fileData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## Subset the data for 2 days in February
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)

## prepare to create a png file
png("plot1.png", width=480, height=480)
## create a histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
##close the  device
dev.off()


