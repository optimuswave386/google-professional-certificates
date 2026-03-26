data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")

filtered_tg <- filter(ToothGrowth, dose == 0.5)
arrange(filtered_tg, len)

filtered_dataset_example <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T), .group = "drop")

