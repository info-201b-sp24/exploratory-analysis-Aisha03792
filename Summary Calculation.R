# A function that takes in a dataset and returns a list of info about it:

summary_info_num_observations_Lightness <- nrow(fenty_x_mac_table)
summary_info_lightness_min_value <- fenty_x_mac_table %>%
  filter(Lightness == min(Lightness, na.rm = T)) %>%
  select(Brand, Lightness)
summary_info_lightness_max_value <- fenty_x_mac_table %>%
  filter(Lightness == max(Lightness, na.rm = T)) %>%
  select(Brand, Lightness)

summary_info_num_observations_Saturation <- nrow(fenty_x_mac_table)
summary_info_saturation_max_value <- fenty_x_mac_table %>%
  filter(Saturation == max(Saturation, na.rm = T)) %>%
  select(Brand, Saturation)

summary_info_num_observations_Hue <- nrow(fenty_x_mac_table)
summary_info_Hue_Fenty <- fenty_table %>%
  select(H)
Unique_Fenty_Hues <- unique(summary_info_Hue_Fenty)

summary_info_Hue_MAC <- mac_table %>%
  select(H)
Unique_MAC_Hues <- unique(summary_info_Hue_MAC)

summary_info <- list(summary_info_lightness_min_value, summary_info_lightness_max_value, summary_info_saturation_max_value, Unique_Fenty_Hues, Unique_MAC_Hues)
