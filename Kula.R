library(readr)
zbco2100 <- read_csv("zbco2100.asc", col_names = c("Nr","X","Y","Z"),
col_types = cols(X5 = col_skip()))
