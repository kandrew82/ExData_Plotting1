png(file="Plot2.png",width=480,height=480)
data<-read.table("household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
data_plot<-data[which((data$Date=="1/2/2007" | data$Date=="2/2/2007")),]
plot.ts(data_plot$Global_active_power,xlab= "",ylab="Global Active Power (kilowatts)",axes=FALSE)
xticks=c(1,1440,2880)
axis(1, at=xticks, labels=c("Thu","Fry","Sat"))
axis(2)
box()
dev.off()