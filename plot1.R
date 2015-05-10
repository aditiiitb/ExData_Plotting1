unzip("exdata-data-household_power_consumption.zip")
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

alldates <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[which(alldates <= "2007-02-02" & alldates >= "2007-02-01")]
rm(alldates)

hist(as.numeric(req$Global_active_power), col = "red")