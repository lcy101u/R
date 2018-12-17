#Crawler for open data

#XML
#install.packages("XML")
#library(XML)

#環保署空氣品質即時污染指標網址
url <- "http://opendata.epa.gov.tw/webapi/Data/REWIQA/?$orderby=SiteName&$skip=0&$top=1000&format=xml"

#download and analyze XML file
#parse 解析
AQIxml.doc <- xmlParse(url)

#擷取XML根節點
AQIxml.top <- xmlRoot(AQIxml.doc)

#查看節點名稱
xmlName(AQIxml.top)

#查看子節點數量
xmlSize(AQIxml.top)

#列出第一筆資料的所有子節點名稱：
#查看子結點
#[[]]root > leaf
names(AQIxml.top[[1]])

#依照名稱(PM2.5)擷取節點
(AQIxml.leaf <- AQIxml.top[[1]][["PM2.5"]])

#擷取節點內的資料
(AQIxml.leaf.value <- xmlValue(AQIxml.leaf))

#xmlToDataFrame() can transfer xml file to dataframe
AQIxml.df <- xmlToDataFrame(AQIxml.top)

#head default to show previous 6 data, can use head(x, 10) to show 10 data
head(AQIxml.df, 10)

str(AQIxml.df$PM2.5)
#levels(AQIxml.df$PM2.5)
#from factor to variable
AQIxml.df$PM2.5 <- as.numeric(levels(AQIxml.df$PM2.5))[as.integer(AQIxml.df$PM2.5)]

str(AQIxml.df$PM2.5)

hist(AQIxml.df$PM2.5)