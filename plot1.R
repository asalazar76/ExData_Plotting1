## Plot 1
# generate a folder named "Plots"
if (!file.exists('Plots')) {
        dir.create('Plots')
}
## open device
png(filename='Plots/plot1.png',width=480,height=480,units='px')
## plot data
hist(power_consumption$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
# Turn off device
dev.off()
