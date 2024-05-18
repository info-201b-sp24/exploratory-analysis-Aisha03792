# A function that takes in a dataset and returns a list of info about it:

summary_info_one <- list(summary_info_some_max_value)
summary_info_num_observations_one <- nrow(fenty_x_mac_table)
summary_info_some_max_value <- fenty_x_mac_table %>%
  filter(Lightness == min(Lightness, na.rm = T)) %>%
  select(Brand)

summary_info_two<- list()
summary_info_num_observations_two <- nrow(fenty_x_mac_table)
summary_info_some_max_value <- fenty_x_mac_table %>%
  filter(Lightness == max(Lightness, na.rm = T)) %>%
  select(Brand)

summary_info_three <- list()
summary_info$num_observations_three <- nrow(fenty_x_table)
summary_info$some_max_value <- fenty_x_table %>%
  filter(some_var == max(some_var, na.rm = T)) %>%
  select(some_label)

summary_info_four <- list()
summary_info$num_observations_four <- nrow(fenty_x_table)
summary_info$some_max_value <- fenty_x_table %>%
  filter(some_var == max(some_var, na.rm = T)) %>%
  select(some_label)

summary_info_five <- list()
summary_info$num_observations_five <- nrow(fenty_x_table)
summary_info$some_max_value <- fenty_x_table %>%
  filter(some_var == max(some_var, na.rm = T)) %>%
  select(some_label)