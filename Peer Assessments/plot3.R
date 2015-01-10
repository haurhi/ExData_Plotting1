power <- read.table('household_power_consumption.txt',sep=';',stringsAsFactors=FALSE)[66638:69517,]

png(file = 'plot3.png')

plot(as.numeric(power[,7]), xaxt = 'n', type = 'l', xlab = '', ylab= 'Energy sub metering')
lines(as.numeric(power[,8]), col = 'red')
lines(as.numeric(power[,9]), col = 'blue')
weekday <- c('Thu', 'Fri', 'Sat')
axis(1, labels = weekday,  at = c(1, 1440 ,2880))
legend('topright', lty = 1, col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

dev.off()