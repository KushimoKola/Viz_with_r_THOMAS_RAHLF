#help(plot)
x<-c(3,5,3,9,1,7)
x
y<- array(c(x), dim = c(2,3))
y
x[2]
y[2,2]
y[,2]
y[1,]
y[, 2:3]
colnames(y)<-c('V1', 'V2', 'V3')
y
rownames(y)<-c('Case 1', 'Case 2')
y
##CREATE DATAFRMAE
z<-as.data.frame(y)
z
str(y)
str(z)
z$V2
#ADD TO DF
z$V4<- c("YES","NO")
z

z[,1]
z[,4]
z[1,]

#TIMESERIES
ts(1:20, frequency = 12, start = c(1950,1) )

#LET'S START AGAIN
a<-c(3,5,3,9,1,7)
V1<- c('Kola', "Rachael", "Oyinda", "Moshood")
V2<-c(2,3,2,1)
V3<-c(3,2,2,3)
ASAS<-c(V1, V2, V3)
ASAS
ASAS1<- array(c(ASAS), dim = c(4,3))
ASAS1
colnames(ASAS1)<-c('V1', 'V2', 'V3')
rownames(ASAS1)<-c('1', '2', '3', '4')
ASAS1
str(ASAS1)
ASAS2<-as.data.frame(ASAS1)
ASAS2
data1<- ASAS2
data1
#CREATE DATA 2
V1<- c(1,2,2,3)
V2<-c(2,3,2,1)
V3<- c(3,2,2,3)

data2<-c(V1, V2, V3)
data2
data2<-array(c(data2), dim =c(4,3))
data2
colnames(data2)<- c("V1", "V2", "V3")
data2
data2<-as.data.frame(data2)
data2
#LIST
klist<-list("A", a, ASAS2)
klist
save(data)

install.packages("gdata")

library(gdata)

data1<-read.xls("data1.xlsx")
data1
data2<-read.xls("data2.xlsx")
f1<-factor(data1$V1)
f1
data2$V1<-factor(data2$V1, labels = c('Kola', 'Rachael', "Oyinda"))
data2
sort(unique(f1))
as.character(f1)

library(Hmisc)
library(RJSONIO)
library(RCurl)
json<-getURL("http://maps.googleapis.com/maps/api/geocode/json?&
                       sensor= false&address=6000+J+Street,+Sacramento,+CA")

plot(data2, cex=2)
plot(data2$V1)
library(maptools)
#library(rgdal)
#data3<-rgdal::readShapeSpatial ("data/london/greater_london_const_region.shp")
library(sf)
data3<-st_read ("data/london/greater_london_const_region.shp")
install.packages("lattice")
library(lattice)
library(ggplot2)
xyplot(data2$V2 ~ data2$V1, cex=2)
qplot(data2$V1)
par(bg="lightgreen")
bar<-c(1,4,3,4)
line<- bar/2
bp<-barplot(bar)
lines(line, col="red")
lines (bp, line, col='blue')
print(bp)
par(mfcol=c(1,2))
plot(1:10)
plot(1:10, axes=FALSE)
axis(1)
axis(2)
box(lty = "solid")
