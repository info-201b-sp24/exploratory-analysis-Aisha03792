library(tidyverse)
library(dplyr)

# Load ggplot2
library(ggplot2)


shades <- read.csv("https://github.com/the-pudding/data/blob/725dc18a59a055891dee25e85652f416b0065bdd/makeup-shades/shades.csv")

# evaluates possible consumers vs revenue when there is exclusivity of shades
# between Fenty and Mac Cosmetics!
comp_rev <- data.frame()


