library(tidyverse)

nypd = read_csv("NYPD_Arrests_Data__Historic_.csv")

head(nypd)

summary(nypd)

nypd$PD_CD = as.factor(nypd$PD_CD)

library(lubridate)

nypd %>%
  mutate(Year = year(mdy(ARREST_DATE))) %>%
  ggplot(aes(x = Year)) +
  geom_histogram()

nypd %>%
  summarise_all(n_distinct)
