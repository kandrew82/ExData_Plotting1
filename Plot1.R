png(file="Plot1.png",width=480,height=480)
data<-read.table("household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
data_plot<-data[which((data$Date=="1/2/2007" | data$Date=="2/2/2007")),]
hist(as.numeric(data_plot$Global_active_power),col = "red", main="Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()