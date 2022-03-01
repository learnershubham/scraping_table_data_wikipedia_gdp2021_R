library(tidyverse)
library(readr)
library(dplyr)
link = "https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(nominal)"
page = read_html(link)
scrape_table_wiki = page %>% html_nodes("table") %>% .[3] %>% html_table() %>% .[[1]]

View(scrape_table_wiki)
