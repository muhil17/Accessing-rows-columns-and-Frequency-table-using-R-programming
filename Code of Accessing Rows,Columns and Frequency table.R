
#Downlaod the data set
data<-read.csv("Enter ur path here")
#Enter ur path at which the dataset is available. Ex - "E:/coding_folder/R_folder/dataset_folder/Big Mart Dataset.csv"

dataA<-data1[1:100,]

#dataA contains only first 100 rows or observations
str(dataA)
dim(dataA)
class(dataA)

nrow(dataA)
ncol(dataA)

nrow(data1)

#dataa is used to print only 1 row data with all columns
dataa<-data1[8423:8423,]

#to print the 100 variables from the last
dataB<-data1[(nrow(data1)-100):nrow(data1),]
dataB
dim(dataB)

#to print first 100 rows wih 3 columns
dataC<-data1[1:100,c(1,3,7)]
dim(dataC)

library(dplyr)
?dplyr::sample_n()
dataE<-sample_n(data1,100)
dim(dataE)
#to select a sample of 100 rows from the dataset

#to randomly select 70 percent of data from the dataset
data_train<-sample_frac(data1,0.70)
dim(data_train)

#tab1 gives the count or frequency of the data based on that variable
#table fuction is used to get the frequency table

tab1<-table(data1$Item_Type)
tab1
tab2<-table(data1$Item_Type,data1$Outlet_Type)
tab2
tab3<-table(data1$Item_Type,data1$Outlet_Type,data1$Outlet_Location_Type)
tab3


