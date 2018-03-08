## Plot 3
## open device
png(filename='Plots/plot3.png',width=480,height=480,units='px')
## plot data
ColumnLines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(power_consumption$DateTime, power_consumption$Sub_metering_1, type="l", col = ColumnLines[1], xlab="", ylab="Energy sub metering")
lines(power_consumption$DateTime, power_consumption$Sub_metering_2, col = ColumnLines[2])
lines(power_consumption$DateTime, power_consumption$Sub_metering_3, col = ColumnLines[3])
legend("topright", legend=labels, col=ColumnLines, lty="solid")
# Turn off device
dev.off()
