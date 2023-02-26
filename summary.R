library(dplyr)


#The book I found my dataset on is Diary of a Wimpy Kid

wimpy_kid_data <- read.csv("~/Downloads/Wimpykid.csv")


#1 Which year had the most checkouts? 
most_year_checkouts <- wimpy_kid_data %>% group_by(CheckoutYear) %>% summarize(total_checkouts = sum(Checkouts)) %>%  filter(total_checkouts == max(total_checkouts)) %>% pull(CheckoutYear)

#2 Which year had the least checkouts? 
min_year_checkouts <- wimpy_kid_data %>% group_by(CheckoutYear) %>% summarize(total_checkouts = sum(Checkouts)) %>%  filter(total_checkouts == min(total_checkouts)) %>% pull(CheckoutYear)

#3 How many physical copies were checked out?
physicaL_check <- wimpy_kid_data %>% filter(UsageClass == "Physical") %>% summarize(total = sum(Checkouts)) %>% pull(total)

#4 How many digital copies were checked out? 
digital_check <- wimpy_kid_data %>% filter(UsageClass == "Digital") %>% summarize(total = sum(Checkouts)) %>% pull(total)

#5 What is the average number of ebook checkouts? 
avg_ebooks <- wimpy_kid_data %>% filter(MaterialType == "EBOOK") %>% summarize(mean_checkouts = mean(Checkouts)) %>% pull(mean_checkouts)


