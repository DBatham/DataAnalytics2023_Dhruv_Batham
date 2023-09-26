EPI_data <- read.csv("D:/Data Analytics/Lab/EPI_data(2010).csv")
#or
# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# launches a simple data editor
EPI 			# prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array

#Exercise 1
summary(EPI)
fivenum(EPI,na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1)) 
rug(EPI)
help(stem)

#Fitting a distribution beyond histograms
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 50), x, xlab = "Q-Q plot for tdsn")
qqline(x)
boxplot(EPI,DALY) 
qqplot(EPI,DALY)


#Your exercise
plot(ecdf(WATER_H), do.points=FALSE, verticals=TRUE)
qqnorm(WATER_H); qqline(DALY)
qqline(Landarea)

#Intercompare exercise
boxplot(EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H, WATER_H, AIR_E, WATER_E, BIODIVERSITY)
help(qt)
#Exercise 2
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)

#Repeating the exercise 1
summary(EPI)
fivenum(EPI,na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1)) 
rug(EPI)

#Fitting a distribution beyond histograms
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)
boxplot(EPI,DALY) 
qqplot(EPI,DALY)
boxplot(No_surface_water, Desert, High_Population_Density)

EPI_South_Asia <- EPI[GEO_subregion]
ESouth <- EPI_South_Asia[is.na(EPI_South_Asia)]
hist(ESouth)

plot(ecdf(EPI_data$EPI),do.points=FALSE,verticals = TRUE)
plot(ecdf(EPI_data$EPI),do.points=TRUE,verticals = TRUE) # points are visible on the plot.
par(pty="s")
help("qqnorm") # read the RStudio documentation for qqnorm
help("qqplot") # read the RStudio documentation for qqplot
qqnorm(EPI_data$EPI)
qqline(EPI_data$EPI) # adding the line on the Q-Q plot
x <- seq(30,95,1)
x
x2 <-seq(30,95,2)
x2
x2 <-seq(30,96,2)
x2
qqplot(qt(ppoints(250),df=5),x, xlab = "Q-Q plot")
qqline(x)

boxplot(EPI_data$EPI,EPI_data$DALY)

#other data
GRUMP_data <- read.csv("D:/Data Analytics/Lab/GPW3_GRUMP_SummaryInformation_2010.csv")

#View(GRUMP_data)
attach(GRUMP_data) 	# sets the ‘default’ object
fix(GRUMP_data) 	# launches a simple data editor
tf <- is.na(GRUMP_data) # records True values if the value is NA
G <- GRUMP_data[!tf] # filters out NA values, new array


#Summary
summary(GRUMP_data)

#Plots
boxplot(RefYearFirst, RefYearLast)

#Histogram
hist(CountryCode)

#Filter

GRUMPCount<-GRUMP_data[!CountryCode]
GCount <- GRUMPCount[!is.na(GRUMPCount)]
hist(GCount)
