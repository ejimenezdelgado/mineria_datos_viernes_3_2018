
data=mtcars
str(data)
summary(data)

dotchart(data$gear,main = "Exploraci�n de la variable gear",
         xlab = "gear",ylab = "Observaciones")

dotchart(data$cyl,main = "Exploraci�n de la variable cly",
         xlab = "cly",ylab = "Observaciones")


data$cyl=factor(data$cyl)

str(data)

summary(data)

data$hp

table(data$hp)

sort(table(data$hp),decreasing = FALSE)

data$hp

mean(data$hp)

by(data$hp,data$am,mean)
  
tapply(data$hp, data$am, mean)


  
  
  