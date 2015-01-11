power <- read.table('household_power_consumption.txt',sep = ';',stringsAsFactors = FALSE)[66638:69517,]
weekday <- c('Thu', 'Fri', 'Sat')

png(file = 'plot2.png')

plot(as.numeric(power[,3]),xaxt = 'n', type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')
axis(1, labels = weekday,  at = c(1, 1441, 2880))

dev.off()