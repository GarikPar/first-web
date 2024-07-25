library(tidyverse)

T_plot <- read_rds("clean_temp.rds")

#T_plot<-x |> 
  #ggplot(aes(x = carat, y = price, color = cut)) + 
  #geom_point() +
  #scale_y_continuous(labels = scales::dollar) +
  #labs(title = "Prices and Sizes for Diamonds of Color D",
       #subtitle = "'Round' carat values like 1, 1.5 and 2 are more common.",
       #x = "Carat",
       #y = "Price")

ggsave("size_v_temp.png", T_plot)
