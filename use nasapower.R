library(nasapower) 
library(readr) 
sites <- read_csv("sorted_sites.csv")

results <- list()

#Loop over each row in the sites data frame
for (i in 1:nrow(sites)) {
  site <- sites[i, ]
  data_RH <- get_power(
    community = "AG",
    lonlat = c(site$site_longitude, site$site_latitude),
    dates = c("2022-01-01", "2023-01-01"),
    temporal_api = "hourly",
    pars = c("RH2M", "T2M", "PRECTOTCORR")#Relative Humidity, Temperature, Corrected Precipitation
  )
  results[[i]] <- data_RH
}

#Loop over the results list to write each site's data to a separate CSV file
#Saving data into separate files to avoid creating a single large file, which can be difficult to manage and import into Python
for (j in seq_along(results)) {
  write_csv(results[[j]], sprintf("site_%d_results.csv", j))
}
