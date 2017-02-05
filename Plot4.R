png(file="Plot4.png",width=480,height=480)
data<-read.table("household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
data_plot<-data[which((data$Date=="1/2/2007" | data$Date=="2/2/2007")),]
par(mfrow=c(2,2))
plot.ts(data_plot$Global_active_power,xlab= "",ylab="Global Active Power",axes=FALSE)
xticks=c(1,1440,2880)
axis(1, at=xticks, labels=c("Thu","Fry","Sat"))
axis(2)
box()

plot.ts(data_plot$Voltage,xlab= "datetime",ylab="Voltage",axes=FALSE)
xticks=c(1,1440,2880)
axis(1, at=xticks, labels=c("Thu","Fry","Sat"))
axis(2)
box()

plot.ts(data_plot$Sub_metering_1,xlab= "",ylab="Energy Sub Metering",axes=FALSE)
xticks=c(1,1440,2880)
axis(1, at=xticks, labels=c("Thu","Fry","Sat"))
axis(2)

lines(data_plot$Sub_metering_2,col="red")
lines(data_plot$Sub_metering_3,col="blue")
l<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", lty=c(1,1,1), col=c("black", "red", "blue"), legend = l,bty = 'n')
box()


plot.ts(data_plot$Global_reactive_power,xlab= "datetime",ylab="Global_Reactive_Power",axes=FALSE)
xticks=c(1,1440,2880)
axis(1, at=xticks, labels=c("Thu","Fry","Sat"))
axis(2)
box()

dev.off()