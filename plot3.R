png("plot3.png")


with(powerhouse,plot(DateTime,Sub_metering_1,type = 'l',
                     ylab = "Energy sub metering",xlab = ""))
with(powerhouse,points(DateTime,Sub_metering_2,type = 'l',col="red"))
with(powerhouse,points(DateTime,Sub_metering_3,type = 'l',col="blue"))
legend("topright",legend = c("Sub_metering_1" ,"Sub_metering_2" ,
        "Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"))

dev.off()