# scrape all video links

library(rvest)
library(tidyverse)

site <- read_html("https://www.dr.dk/bonanza/serie/121/casper--mandrilafta/25833/casper--mandrilaftalen-0248")

links <- site %>% 
  html_nodes("div a") %>%
  html_attr("href") %>%
  as.tibble() %>%
  filter(grepl("bonanza/serie/121/", value)) %>%
  mutate(value = paste0("https://www.dr.dk/", value))

write_csv(links,"mandril_links.csv")

#alternative
links <- site %>% 
  html_nodes("div") %>%
  map(html_attrs) %>% 
  map_df(~as.list(.)) %>%
  select(href) %>%
  filter(grepl("bonanza/serie/121/", href)) %>%
  mutate(href = paste0("https://www.dr.dk/", href))