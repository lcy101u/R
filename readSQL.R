#抓資料庫資料

#install.packages("DBI")
#install.packages("gWidgets")
#install.packages("RMySQL")
#install.packages("dbConnect")

#library(DBI)
#library(gWidgets)
#library(RMySQL)
#library(dbConnect)

#Build SQL connection
con <- dbConnect(MySQL(), dbname="test01", username="root", password="00000000")
#setup Big5, or will be grabled
dbSendQuery(con, "SET NAMES big5")

dbClearResult(dbListResults(con)[[1]])

#query SQL basic setup
dbGetQuery(con,"show variables like 'character_set_%'")

#read SQL * represent all info
(data = dbGetQuery(con, "select idno, name, salary from employee"))
