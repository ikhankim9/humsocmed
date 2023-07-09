setwd('Z:\\HDD1\\세미나\\자료\\20230712\\Data')

getwd()

pop.data <- read.csv("Z:\\HDD1\\세미나\\자료\\20230712\\Data\\POP0020.csv")

pop2010 = subset(pop.data, pop.data[,"YEAR"]==2010)

str(pop2010)

head(pop2010); tail(pop2010)

sx.data <- read.csv("Z:\\HDD1\\세미나\\자료\\20230712\\Data\\SX0812.csv")

str(sx.data)

head(sx.data)

merged.data = merge(x = pop2010,
                    y = sx.data,
                    by = c('SEX','AGE','EDU','H_ADMINCODE2'),
                    all.x = TRUE)

merged.data[is.na(merged.data)]<-0

data1 = subset(merged.data, merged.data[,"SEX"]==1 & merged.data[,"H_ADMINCODE2"]==11010)
data2 = subset(merged.data, merged.data[,"SEX"]==1 & merged.data[,"H_ADMINCODE2"]==39020)