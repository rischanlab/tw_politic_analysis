#Broadcast data anaylisis

#data initiation
getwd()
setwd("E:\\RESEARCH\\twitter\\data\\csv")
list.files()
broadcast <- read.csv("broadcast.csv", header=TRUE)
names(broadcast)

broadcast$personality <- NULL

library(randomForest)
fit <- randomForest(broadcast$user ~ broadcast$sumcallin+broadcast$caountcallin+broadcast$sumcallout+
                      broadcast$countcallout+broadcast$sumreceived+broadcast$countreceived+
                      broadcast$sumsent+broadcast$countsent, data=broadcast)
print(fit)
importance(fit)

broadcast$user <- NULL

fit <- randomForest(broadcast$personality ~ broadcast$sumcallin+broadcast$caountcallin+broadcast$sumcallout+
                      broadcast$countcallout+broadcast$sumreceived+broadcast$countreceived+
                      broadcast$sumsent+broadcast$countsent, data=broadcast)
print(fit)
importance(fit)

