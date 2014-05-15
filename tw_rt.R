#author  	: Rischan Mafrur
#email		: rischanlab@gmail.com
#website	: rischanlab.github.io, ourmasjid.me 
#May 15, 2014




#data initiation
getwd()
setwd("E:\\RESEARCH\\twitter\\data\\csv")
list.files()
tolak <- read.csv("tolak_tw_rt.csv")
pilih <- read.csv("pilih_tw_rt.csv")

names(tolak) <-c("tweet","retweet")
names(pilih) <-c("tweet","retweet")
