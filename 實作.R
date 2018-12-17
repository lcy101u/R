#實作練習 : 產品銷售計算
# Dec.17th, 2018

#set.seed運用set.seed()函數，在同一個隨機種子的設定之下，會產出相同的隨機輸出
set.seed(100)

#runif(5) 0~1之間產生5個隨機數 runif(5,2, 10) 2~10間產生5個隨機數 
saleData <- matrix(round(runif(48)*10000), nrow=12)
colnames(saleData)<- c("牛肉麵", "蚵仔煎", "棺材板", "肉燥飯")
rownames(saleData)<- c("一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月")
saleData
