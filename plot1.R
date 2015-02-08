source("loadDF.R")

# Constructs the Global Active Power histogram
plot1 <- function(df=NULL) {
        # default
        if(is.null(df))df <- loadDF()
        
        #open png device
        png("plot1.png", width=480, height=480)
        #construct plot 
        hist(df$Global_active_power,
             main="Global Active Power",
             xlab="Global Active Power (kilowatts)",
             ylab="Frequency",
             col="red")
        #copy to device
        dev.off()
}
plot1()