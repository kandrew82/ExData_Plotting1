png(file="Plot3.png",width=480,height=480)
data<-read.table("household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
data_plot<-data[which((data$Date=="1/2/2007" | data$Date=="2/2/2007")),]
plot.ts(data_plot$Sub_metering_1,xlab= "",ylab="Energy Sub Metering",axes=FALSE)
xticks=c(1,1440,2880)
axis(1, at=xticks, labels=c("Thu","Fry","Sat"))
axis(2)

lines(data_plot$Sub_metering_2,col="red")
lines(data_plot$Sub_metering_3,col="blue")
l<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", lty=c(1,1,1), col=c("black", "red", "blue"), legend = l)
box()
dev.off()