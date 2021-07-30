png("plot4.png")

par(mfcol=c(2,2))

with(powerhouse,plot(DateTime,Global_active_power,type = 'l',
                     ylab = "Global Active Power (kilowatts)",xlab = ""))

with(powerhouse,plot(DateTime,Sub_metering_1,type = 'l',
                     ylab = "Energy sub metering",xlab = ""))
with(powerhouse,points(DateTime,Sub_metering_2,type = 'l',col="red"))
with(powerhouse,points(DateTime,Sub_metering_3,type = 'l',col="blue"))
legend("topright",legend = c("Sub_metering_1" ,"Sub_metering_2" ,
                             "Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"))


with(powerhouse,plot(DateTime, Voltage, type = 'l',xlab = "datetime",ylab = "Voltage"))

with(powerhouse,plot(DateTime, Global_reactive_power, type = 'l',xlab = "datetime"))

dev.off()