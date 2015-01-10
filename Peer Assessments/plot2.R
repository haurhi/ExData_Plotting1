power <- read.table('household_power_consumption.txt',sep=';',stringsAsFactors=FALSE)[66638:69517,]

png(file = 'plot2.png')

plot(as.numeric(power[,3]),xaxt = 'n', type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')
weekday <- c('Thu', 'Fri', 'Sat')
axis(1, labels = weekday,  at = c(1, 1440 ,2880))

dev.off()