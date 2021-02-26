library(readxl)
library(dplyr)
df1<-read.csv("G:/Beneficiary/Beneficiary/CASTE CERTIFICATE_Collated_file.csv")
head(df1)
length(unique(df1$Mobile.No))
dfmobuniq<-as.data.frame(unique(df1$Mobile.No))
head(dfmobuniq)
df1$left<-substr(df1$Mobile.No,1,1)
unique(df1$left)
nrow(dfmobuniq >5)
dfmobuniq$left<-substr(dfmobuniq$`unique(df1$Mobile.No)`,1,1)  
unique(dfmobuniq$left)
nrow(dfmobuniq$left>5)
write.csv(dfmobuniq,"G:/Beneficiary/Beneficiary/CASTE CERTIFICATE_Unique_Collated_file.csv")