#Assignment 1 for Exploratory Data Analysis

#Load data frame from file.
#row 69517 end of 2/2/2007, row 66638 start of 1/2/2007
thenames <- read.table("household_power_consumption.txt",sep = ";",nrows = 1)
powerhouse <- read.table("household_power_consumption.txt",
                         col.names=thenames[1,],sep = ";",
                         skip = 66637,nrows = 2880)
#create new column to combine date and time
powerhouse$DateTime<-paste(powerhouse$Date, powerhouse$Time)

#convert DateTime column to posixlt format, timezone is set to central European 
#time
powerhouse$DateTime <- strptime(powerhouse$DateTime,format = "%d/%m/%Y %H:%M:%S"
                                ,tz="CET")

