library(tidyverse)
library(dplyr)

# Load ggplot2
library(ggplot2)

title = " Revenue while Shade increases over Years"

foundation_dataset <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/makeup-shades/shades.csv")

# evaluates possible consumers vs revenue when there is exclusivity of shades
# between Fenty and Mac Cosmetics!

fenty_data <- subset(foundation_dataset, brand == "Fenty")

ggplot(data = foundation_dataset) + 
  geom_bar(mapping = aes(x = product, y = product, fill = "Fenty"), stat = "identity")

  