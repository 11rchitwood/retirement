library(tidyverse)
library(rvest)

cols <- c(
  state = "State",
  score = "Overall score",
  affordability = "Affordability rank (40%)",
  wellness = "Wellness rank (20%)",
  culture = "Culture rank (15%)",
  weather = "Weather rank (15%)",
  crime = "Crime rank (10%)"
)

retirement <- read_html("https://www.bankrate.com/retirement/best-and-worst-states-for-retirement/") |>
  html_element("table") |>
  html_table() |>
  select(all_of(cols))
