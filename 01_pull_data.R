# install.packages("njtr1")
library(njtr1)
library(dplyr)

# Sample for 2020
acc_20 <- get_njtr1(year = 2020, county = "Hudson", type = "Accidents", geo = T)
acc_20 <- acc_20 %>%
  filter(acc_20$municipality_name == "JERSEY CITY")

ped_20 <- get_njtr1(year = 2020, type = "Pedestrians", geo = T)
ped_20 <- ped_20 %>%
  filter(is_bycyclist == "Y")
acc_ped <- merge(acc_20, ped_20, by = "id")

# All Years
years <- c(2001:2020)
types <- c("Accidents", "Pedestrians")
for (y in years) {
  print(y)
  for (t in types) {
    print(t)
    data <- get_njtr1(year = y, type = t)
    write.csv(data, file = paste0(y, t, ".csv"))
  }
}