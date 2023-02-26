library(ggplot2)
library(stringr)
wimpy_kid_rodrick <- wimpy_kid_data %>% filter(str_detect(`Title`, "Rodrick Rules"))

wimpy_kid_rod_year <- wimpy_kid_rodrick %>% group_by(CheckoutYear) %>% summarize(total_checkouts = sum(Checkouts))

# create the bar plot
ggplot(wimpy_kid_rod_year, aes(x = CheckoutYear, y = total_checkouts)) +
  geom_bar(stat = "identity", fill = "blue") + ggtitle("Number of Rodrick Rules checked out each year") + xlab("Year") + ylab("Total Checkouts")
