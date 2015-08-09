dataFile <- "D:/datasciencecoursera/data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


globalActivePower <- as.numeric(subData$Global_active_power)
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
energy1<- as.numeric(subData$Sub_metering_1)
energy2<- as.numeric(subData$Sub_metering_2)
energy3<- as.numeric(subData$Sub_metering_3)
png("D:/datasciencecoursera/data/plot3.png", width=480, height=480)
plot(datetime , energy1 , type="l" , xlab="", ylab="Energy Submetering", col="black")
lines(datetime, energy2, col="red" )
lines(datetime, energy3, col="blue" )
legend("topright", col=c("black","red","blue"),lty = 1,lwd = 2, legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
dev.off()








