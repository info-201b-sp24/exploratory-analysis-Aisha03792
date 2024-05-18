# Summary

# Table: Fenty x Mac Cosmetics (2018)

library(tidyverse)
library(dplyr)

original_data <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/makeup-shades/shades.csv")
read.csv("shades.csv")

all_brands <- select(original_data, c(brand, product, hex, H, S, L))

fenty_table <- filter(all_brands, brand == c("Fenty"))
fenty_table <- arrange(fenty_table, L)

mac_table <- filter(all_brands, brand == c("MAC"))
mac_table <- arrange(mac_table, L)

fenty_x_mac_table <- full_join(fenty_table, mac_table)

fenty_x_mac_table <- rename(fenty_x_mac_table, Brand = brand)
fenty_x_mac_table <- rename(fenty_x_mac_table, Product = product)
fenty_x_mac_table <- rename(fenty_x_mac_table, Shade_Code = hex)
fenty_x_mac_table <- rename(fenty_x_mac_table, Hue = H)
fenty_x_mac_table <- rename(fenty_x_mac_table, Saturation = S)
fenty_x_mac_table <- rename(fenty_x_mac_table, Lightness = L)


group_by(fenty_x_mac_table, Hue)

new_table <- fenty_x_mac_table %>%
  group_by(Hue)

print(new_table)