#default height and width is 480 
png("plot2.png")

with(powerhouse,plot(DateTime,Global_active_power,type = 'l',
        ylab = "Global Active Power (kilowatts)",xlab = ""))

dev.off()