library(ggplot2)
wimpy_kid_data %>% filter(MaterialType == "EBOOK" | MaterialType == "AUDIOBOOK" | MaterialType == "BOOK") %>% 
  group_by(CheckoutYear, MaterialType) %>% 
  summarize(TotalCheckouts = sum(Checkouts)) %>%
    ggplot(aes(x = CheckoutYear, y = TotalCheckouts, color = MaterialType)) +
  geom_line() + ggtitle("Trends in Checkout of Different Book Formats from 2008 to 2023") + xlab("Year") + ylab("Total Checkouts")