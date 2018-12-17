#R抓取網頁資訊

#install.packages("rvest")
#library(rvest)

web <- read_html("https://book.douban.com/top250?icn=index-book250-all", encoding="UTF-8")
position <- web%>%html_nodes("p.quote")%>%html_text()
position


