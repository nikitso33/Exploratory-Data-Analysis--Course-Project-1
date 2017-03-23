dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
# We can read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.
#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
#graphics device
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
#create the histogram
dev.off() 
#we do not forget to close it.
