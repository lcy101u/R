#課堂實作練習 : 產品銷售計算
# Dec.17th, 2018

#set.seed運用set.seed()函數，在同一個隨機種子的設定之下，會產出相同的隨機輸出
set.seed(100)

saleData <- matrix(round(runif(21)*100), nrow=7)
colnames(saleData)<- c("Vanilla(香草)", "Chocolate(巧克力)", "Strawberry(草莓)")
rownames(saleData)<- c("星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日")
saleData

#rowSums
rowSums(saleData)

#可用cbind()將列加總的結果加入原本資料
saleData <- cbind(saleData, 銷售數量 = rowSums(saleData))
saleData

#rbind()
saleData <- rbind(saleData, 銷售數量 = colSums(saleData))
saleData
