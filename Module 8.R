install.packages("plyr")
library(plyr)

x <- read.table(file.choose(), header = TRUE, sep = ",")

y <- ddply(x, "Sex", transform, Age.Average = mean(Age), Grade.Average = mean(Grade))

write.table(y, "Sorted_Average.csv", sep = ",", row.names = FALSE, quote = FALSE)

newx <- subset(x, grepl("[iI]", x$Name))

write.table(newx, "DataSubset.csv", sep = ",", row.names = FALSE, quote = FALSE)

