## Plot 4
## open device
png(filename='Plots/plot4.png',width=480,height=480,units='px')
## setting our Plot Window to 4 plots
par(mfrow=c(2,2))

## plot data upper rows
## (1,1)
plot(power_consumption$DateTime, power_consumption$Global_active_power,ylab='Global Active Power',xlab='',type='l')
## (1,2)
plot(power_consumption$DateTime, power_consumption$Voltage, xlab='datetime', ylab='Voltage', type='l')

## plot data on bottom rows
## (2,1)
ColumnLines <- c('black','red','blue')
labels <- c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power_consumption$DateTime, power_consumption$Sub_metering_1,type="l", col = ColumnLines[1], xlab="", ylab = "Energy sub metering")
lines(power_consumption$DateTime, power_consumption$Sub_metering_2, col = ColumnLines[2])
lines(power_consumption$DateTime, power_consumption$Sub_metering_3, col = ColumnLines[3])
## (2,2)
plot(power_consumption$DateTime, power_consumption$Global_reactive_power, xlab='datetime', ylab='Global_reactive_power', type='l')

# close device
dev.off()
