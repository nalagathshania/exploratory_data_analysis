dataFile <- "D:/datasciencecoursera/data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


datetimeplot <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("D:/datasciencecoursera/data/plot2.png", width=480, height=480)
plot(datetimeplot, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()








