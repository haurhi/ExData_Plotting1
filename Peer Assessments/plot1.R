power <- read.table('household_power_consumption.txt',sep = ';',stringsAsFactors = FALSE)[66638:69517,]

png(file = 'plot1.png')

hist(as.numeric(power[,3]), ylab = 'Frequency', xlab = 'Global Active Power (kilowatts)', col = 2, main = 'Global Active Power')

dev.off()

## names(power) <- c('Date', 'Time', 'Global active power', 'Global reactive power','Voltage', 'Global intensity', 'Sub metering 1', 'Sub metering 2', 'Sub metering 3')
## strptime(power[,2], format = '%H:%M:%S')
## date <- as.Date(power[,1], format = '%d/%m/%Y')