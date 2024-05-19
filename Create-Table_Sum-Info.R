#Overview: 

"The table includes the product type and hexadecimal color to further identify the individual shade aside from the brand and product name as they are all the same.The columns chosen are the hue, saturation, and lightness variables as they are the information we decipher in the graphs. We chose to rename the hex, hue, saturation, and lightness columns to prevent misinformation of the data. The original data  had labeled the information using abbreviations (hex, H, S, L) which took a bit of searching on our part to find the meaning of each abbreviation. Once locating the key we chose to change the column name to make it accessible to readers who are unfamiliar with the topic. The table serves as a summary for the information presented in the graphs. The table is framed from highest lightness scale to the lowest, split between the two brands. "

# Table: Fenty x Mac Cosmetics (2018)

library(tidyverse)
library(dplyr)

original_data <- read.csv("shades.csv")

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
mac_x_fenty_table <- data.frame(fenty_x_mac_table)
group_by(fenty_x_mac_table, Hue)
