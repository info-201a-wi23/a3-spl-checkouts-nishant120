library(dplyr)
library(ggplot2)
graph1 <- wimpy_kid_data %>% filter(UsageClass == "Physical" | UsageClass == "Digital") %>% group_by(CheckoutYear, UsageClass) %>%  summarize(TotalCheckouts = sum(Checkouts)) %>%
  ggplot(aes(x = CheckoutYear, y = TotalCheckouts, color = UsageClass)) + geom_line() + ggtitle("Total Checkouts of Digital and Physical Copies from 2008 to 2023") +
  xlab("Year") +
  ylab("Total Checkouts")

