#物件轉換
id <- c(1, 2, 3, 4)
x <- data.frame(id)
x

#轉換資料框架物件為矩陣物件
matrix.x <- as.matrix(x)
matrix.x 

#轉換矩陣物件為向量物件
vector.x <- as.vector(matrix.x)
vector.x

#加總向量（vector）矩陣（matrix）資料框架（data.frame）的列資料或欄資料
x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
x

#rowSums()函數可以加總列資料
rowSums(x)

#colSums()函數可以加總欄資料
colSums(x)

#rowMeans()函數可以計算列資料的平均值
rowMeans(x)

#colMeans()函數可以計算欄資料的平均值
colMeans(x)
