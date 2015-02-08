source("loadDF.R")

# Constructs the Global Active Power plot
plot2 <- function(df=NULL) {
        #default
        if(is.null(df)) df <- loadDF()
        #open png device
        png("plot2.png", width=480, height=480)
        #construct plot 
        plot(df$Time, df$Global_active_power,
             type="l",
             main="Global Active Power Time distribution",
             xlab="",
             ylab="Global Active Power (kilowatts)")
        #copy to device
        dev.off()
}
plot2()