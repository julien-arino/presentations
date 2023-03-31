library(readr)
library(dplyr)
library(wbstats)

source("useful_functions.R")

# If need to search for indicator:
# wb_search(pattern="air passengers")

if (FALSE) {
  # Dowload the data
  options(timeout=120)
  raw_data <- wb_data(indicator = "IS.AIR.PSGR")
} else {
  raw_data <- read_csv("API_IS.AIR.PSGR_DS2_en_csv_v2_5358459.csv", 
                       skip = 3)
}

raw_data = raw_data %>%
  filter(`Country Name` == "World")

data = t(raw_data[5:dim(raw_data)[2]])
data = data.frame(year = rownames(data),
                  value = data)
data$year = as.numeric(data$year)

data = data %>% 
  filter(year >= 1970 & year <= 2020)

y_axis = make_y_axis(range(data$value, na.rm = TRUE))

png(filename = "../FIGS/transportation/nb-air-PAX-per-year.png",
    width = 1200, height = 800, res = 200)
plot(data$year, data$value*y_axis$factor,
     type = "b",
     xlab = "Year", ylab = "# PAX",
     main = "Number air PAX transported/year (all countries)",
     cex.lab = 1.2,
     pch = 19, lwd = 2,
     yaxt = "n")
axis(2, at = y_axis$ticks, labels = y_axis$labels, las = 1,
     cex.lab = 1.2)
dev.off()
