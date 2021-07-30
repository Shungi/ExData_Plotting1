#Assignment 1 for Exploratory Data Analysis

#Load data frame from file.
#row 69517 end of 2/2/2007, row 66638 start of 1/2/2007
thenames <- read.table("household_power_consumption.txt",sep = ";",nrows = 1)
powerhouse <- read.table("household_power_consumption.txt",col.names=thenames[1,],sep = ";",
                         skip = 66637,nrows = 2880)

#convert first column in date, as opposed to columns
powerhouse[,1] <- as.Date(powerhouse[,1],format = "%d/%m/%Y")

