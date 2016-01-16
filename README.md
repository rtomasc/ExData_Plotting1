Modified from the original readme.md

Please note that plots swho weekdays in Spanish, as it is the local language of my PC
## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

* The zip file is downloaded from the website. 
* The zip file is unzipped, obtaning "household_power_consumption.txt" in the "household_power_consumption" directory
* The dataset is a text file (has 2,075,259 rows and 9 columns. sep = ";", missing values = `?`

* We only us data from the dates 2007-02-01 and
2007-02-02. We get a dataframe named HouseholdData, with 1440 rows. 

* the Date and Time variables have been converted to
Date/Time classes in R using the `strptime()` function.

* Weekday is added as a new variable. PLEASE NOTE WEEKDAY IS IN SPANISH, AS THIS IS MY LOCAL PC LANGUAGE.

Instructions for reading and transforming data are included in each plotX.R script, as was said to do. 

## Making Plots

For each plot instructions of the Course Project (previous readme.md file) are followed.  

* Each plot is saved in a PNG file with a width of 480
pixels and a height of 480 pixels.

* Plot files are named as `plot1.png`, `plot2.png`, `plot3.png` and `plot4.png`.

* 4 separate R code files are created (`plot1.R`, `plot2.R`,`plot3.R`, `plot4.R`) that
construct the corresponding plot. 

* As a result, in this repository are 4 PNG files and 4 R code files.

