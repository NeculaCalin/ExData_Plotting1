source("loadDF.R")
plot3 <- function(df=NULL) {
        #default
        if(is.null(df)) df <- loadDF()
        #open png device
        png("plot3.png", width=480, height=480)
        #construct plot 
        plot(df$Time, df$Sub_metering_1, type="l", col="black",
             xlab="", ylab="Energy sub metering")
        
        lines(df$Time, df$Sub_metering_2, col="red")
        
        lines(df$Time, df$Sub_metering_3, col="blue")
        #add legend
        legend("topright",
               col=c("black", "red", "blue"),
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               lty=1)
        #copy to device
        dev.off()
}
plot3()