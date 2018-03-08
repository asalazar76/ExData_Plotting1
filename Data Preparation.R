## Setting working directory
setwd("~/Documents/R/Data Science Specialization JHU/04 Exploratory Data Analysis/Week 1/Quiz 1")

## Creating a "Data" folder
if (!file.exists('Data')) {
        dir.create('Data')
}

## Checking if the TXT file name already exists
if (!file.exists('Data/household_power_consumption.txt')) {
}

## Downloading the files
file.url<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(file.url,destfile='Data/household_power_consumption.zip')
unzip('Data/household_power_consumption.zip',exdir='Data',overwrite=TRUE)

## Converting TXT into Data Table
library(data.table)
source_data<-read.table('Data/household_power_consumption.txt',header=TRUE,
                              sep=';',na.strings='?')
## Subsetting (just 2 days)
source_data_2days <- source_data[source_data$Date %in% c("1/2/2007","2/2/2007"),]

## Date and Time setting
library(lubridate)
DateTime<-dmy(source_data_2days$Date)+hms(source_data_2days$Time)

## New column "DateTime" merged into our data set 
power_consumption <- cbind(DateTime, source_data_2days)
