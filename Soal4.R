#Soal 4
#4A
my_data <- read.delim(file.choose())
my_data$Group <- as.factor(my_data$Group)
my_data$Group = factor(my_data$Group, labels = c("grup1", "grup1", "grup3"))
grup1 <- subset(my_data, Group == "grup1")
grup2 <- subset(my_data, Group == "grup1")
grup3 <- subset(my_data, Group == "grup3")

qqnorm(grup1$Length)

qqnorm(grup2$Length)

qqnorm(grup3$Length)

#4B
bartlett.test(Length ~ Group, data = my_data)

#4C
model1 <- aov(Length ~ Group, data = my_data)
summary(model1)

#4D
#Ada di readme.md

#4E
TukeyHSD(model1)

#4F
library("ggplot2")
ggplot(my_data, aes(x = Group, y = Length)) + 
  geom_boxplot(fill = "white", colour = "black") + 
  scale_x_discrete() + xlab("Group") + ylab("Length")