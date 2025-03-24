library(ggplot2)

getwd()
infantdata <- read.csv("/Users/sarahbhatti/Downloads/Leinhardt.csv") 
head(infantdata)

plot(infant ~ income, data = infantdata)

piechart <- ggplot(infantdata, aes(x = "", y = infant, fill = region)) +
  theme(axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.text.x = element_blank())+
  geom_col()+
  coord_polar(theta = "y") 

piechart

counts <- table(infantdata$region)
barplot(counts, main = "Infant Mortality")

RegionRatesBP <- ggplot(infantdata, aes(region, infant))+
  geom_bar(stat = "identity")


