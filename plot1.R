#default height and width is 480 
png("plot1.png")

hist(powerhouse$Global_active_power,col = "red",main = "Global Active Power",
        xlab = "Global Active Power (kilowatts)")

dev.off()
