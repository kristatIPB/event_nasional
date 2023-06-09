message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)

message('Scraping Data')
#SCRAPPING
url="https://www.eventbrite.com/d/indonesia/events"
yt <- read_html(url)
yc <- yt %>% html_nodes(".Stack_root__1ksk7") %>% html_text2()
ycv<- strsplit(yc, "\n")
nama_event<-c()
waktu<-c()
tempat<-c()
waktu2<-c()
hari<-c()
jam2<-c()
jam<-c()
meridiem<-c()
for (i in 1:length(ycv)){
  nama_event[i]<-ycv[[i]][1]
  waktu[i]<-ycv[[i]][3]
  waktu2[i]<-strsplit(waktu[i], "•")
  hari[i]<-waktu2[[i]][1]
  jam2[i]<-waktu2[[i]][2]
  jam[i]<-gsub("[^0-9.-:]", "", jam2[i])
  meridiem[i]<-str_squish(gsub("[^A-z]","",jam2[i]))
  tempat[i]<-ycv[[i]][5]
}
nama_event
data_event<-data.frame(nama_event,hari,jam,meridiem,tempat)
data_event<-data_event[1:8,]
data_event$waktu_scrap<-Sys.Date()

#MONGODB
message('Input Data to MongoDB Atlas')
atlas <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_conn$insert(data_event)
rm(atlas_conn)



