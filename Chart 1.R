#Load libraries
library(ggplot2)

# Load data from the URL
foundation_dataset <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/makeup-shades/shades.csv")

# Filter the data from Mac and Fenty brands

filtered_data <- subset(foundation_dataset,brand %in% c("Fenty", "MAC"))

# Create the histogram
ggplot(data = filtered_data, aes(x = L, fill = brand)) +
  geom_histogram(bins = 30, color = "black", alpha = 0.7, position = "identity")+
labs(
  title = "Histogram of Lightness for Fenty and Mac Foundations",
  x = "Lightness",
  y = "Frequency",
  fill = "Brand"
) + 
  theme_minimal()
  