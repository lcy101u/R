#20181217
#BMI

Gender <- c("M", "M", "F")
Height <- c(175, 180.1, 149)
Weight <- c(72, 76, 49)
Age <- c(24, 28, 22)
bmiData <- data.frame(Gender, Height, Weight, Age)
bmiData

bmiData["BMI"] <- NA
bmiData$BMI <- round(bmiData$Weight/(bmiData$Height/100)^2,2)
bmiData