# Load ggplot2
library(ggplot2)

foundation_dataset <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/makeup-shades/shades.csv")

#filtering data just to get the two brands!

filtered_data <- subset(foundation_dataset, brand %in% c("House of Tara", "Estée Lauder"))

# Bar graph
ggplot(data = filtered_data) + 
  geom_bar(mapping = aes(
    x = product,
    y = brand, 
    fill = "identification"), 
    stat = "identity") + 
  ggtitle("Nigerain Based .Vs. American Based")





  