power <- read.table('household_power_consumption.txt',sep=';',stringsAsFactors=FALSE)[66638:69517,]
weekday <- c('Thu', 'Fri', 'Sat')

png(file = 'plot4.png')

par(mfrow = c(2,2))
## figure(1)
plot(as.numeric(power[,3]),xaxt = 'n', type = 'l', xlab = '', ylab = 'Global Active Power')
axis(1, labels = weekday,  at = c(1, 1440 ,2880))

## figure(2)
plot(as.numeric(power[,5]),xaxt = 'n', type = 'l', xlab = 'datetime', ylab = 'Voltage')
axis(1, labels = weekday,  at = c(1, 1440 ,2880))

## figure(3)
plot(as.numeric(power[,7]), xaxt = 'n', type = 'l', xlab = '', ylab= 'Energy sub metering')
lines(as.numeric(power[,8]), col = 'red')
lines(as.numeric(power[,9]), col = 'blue')
axis(1, labels = weekday,  at = c(1, 1440 ,2880))
legend('topright', lty = 1, col = c('black', 'red', 'blue'), bty = 'n', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

## figure(4)
plot(as.numeric(power[,4]),xaxt = 'n', type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')
axis(1, labels = weekday,  at = c(1, 1440 ,2880))

dev.off()
