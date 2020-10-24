library(tidyverse)
library(lubridate)

plotTimeSeries <- function(startDate, endDate, country, type){
  df <- getData()

  df %>%
    filter(Country == country,
           Date >= startDate,
           Date <= endDate) -> df

  color <- case_when(
    type == 'Confirmed' ~ '#69b3a2',
    type == 'Deaths' ~ '#30576B',
    type == 'DailyConfirmed' ~ '#05AFF2',
    type == 'DailyDeaths' ~ '#BF2604'
  )

  description <- case_when(
    type == 'Confirmed' ~ 'Deaths',
    type == 'Deaths' ~ 'Confirmed Cases',
    type == 'DailyConfirmed' ~ 'Daily Confirmed Cases',
    type == 'DailyDeaths' ~ 'Daily Deaths'
  )

  df %>%
    ggplot(aes(x = Date)) +
    geom_line(aes_string(y = type), color="#69b3a2") +
    labs(y = description)

}