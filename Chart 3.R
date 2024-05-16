# Load ggplot2
library(ggplot2)


foundation_dataset <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/makeup-shades/shades.csv")


# Plotting Bar
ggplot(data = foundation_dataset) + 
  geom_bar(mapping = aes(
    x = product,
    y = product, 
    fill = "Fenty"), 
    stat = "identity") + 
  ggtitle("Revenue When Shades Options Increase Over The Years")

  