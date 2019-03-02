# Scrape all character names

library(rvest)
library(tidyverse)
library(magrittr)

site <- read_html("https://da.wikipedia.org/wiki/Figurer_fra_Casper_%26_Mandrilaftalen#Unavngivne_figurer_fra_Casper_&_Mandrilaftalen")

#site %>% 
#  html_nodes("table tr th span")

table_list <- site %>% 
  html_table(fill=T)

characters <- table_list[[2]][-1,c(1,2,6)] 

characters %<>%
  rename(Skuespiller = "Spillet af") %>%
  as_tibble()

write_csv(characters, "mandril_karakterer.csv")