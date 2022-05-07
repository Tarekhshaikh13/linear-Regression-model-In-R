library("readxl")

dataset = read_excel("C://Users//Tareq//study//p&s//linear_regression_model//LungCapData.xls")
View(dataset)

lungcap = dataset$LungCap
Age = dataset$Age

plot(Age,lungcap, main = " scatter plot",col = " blue")

cor(Age,lungcap)


model = lm(lungcap ~ Age)

summary(model)

abline(model,col = "red",lwd = 3)


predict(model,list(Age=24))

predict(model,list(Age=28))