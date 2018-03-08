## Plot 2
## open device
png(filename='Plots/plot2.png',width=480,height=480,units='px')
## plot data
plot(power_consumption$DateTime, power_consumption$Global_active_power, col = "black", ylab='Global Active Power (kilowatts)', xlab="", type='l')
# Turn off device
dev.off()
