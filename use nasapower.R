library(nasapower) # 加载 nasapower 包
library(readr)     # 加载 readr 包来读取 CSV 文件

# 读取 CSV 文件
sites <- read_csv("sorted_sites.csv")

# 创建一个空列表来存储所有结果
results <- list()

# 循环遍历所有行
for (i in 1:nrow(sites)) {
  site <- sites[i, ]
  # 调用 get_power 函数
  data_RH <- get_power(
    community = "AG",
    lonlat = c(site$site_longitude, site$site_latitude),
    dates = c("2022-01-01", "2023-01-01"),
    temporal_api = "hourly",
    pars = c("RH2M", "T2M", "PRECTOTCORR")
  )
  # 存储结果
  results[[i]] <- data_RH
}

# 可以选择保存或处理结果
# 例如，保存每个站点的结果为单独的 CSV 文件
for (j in seq_along(results)) {
  write_csv(results[[j]], sprintf("site_%d_results.csv", j))
}
