#Soal 5
libray(dplyr)
library(multcompView)
gtl <- read.csv(file.choose())

#5A
qplot(x = Temp, y = Light, geom = "point", data = gtl) +
  facet_grid(.~Glass, labeller = label_both)

#5B
gtl$Glass <- as.factor(gtl$Glass)
gtl$Temp_Factor <- as.factor(gtl$Temp)
str(gtl)

gtlaov <- aov(Light ~ Glass*Temp_Factor, data = gtl)
summary(gtlaov)

#5C
data_summary <- group_by(gtl, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))

print(data_summary)

#5D
tukey <- TukeyHSD(gtlaov)
print(tukey)

#5E
tukey.cld <- multcompLetters4(gtlaov, tukey)
print(tukey.cld)