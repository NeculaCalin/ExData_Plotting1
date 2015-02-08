setwd("/home/Calin/Desktop")
loadDF <-function(){
table <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na="?")

table$Time <- strptime(paste(table$Date, table$Time), "%d/%m/%Y %H:%M:%S")
table$Date <- as.Date(table$Date, "%d/%m/%Y")

dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
DF <- subset(table, Date %in% dates)
return(DF)
}