library(tidyverse)
library(knitr)

vazgen <- read_csv("vazgen.csv")
maralik <- read_csv("maralik.csv")

merged <- rbind(vazgen, maralik)


V_vazgen <- vazgen|>
  select(time, temperature)|>
   arrange(desc(temperature))

temp_plot <- merged|>
  ggplot(mapping = aes(x = time, y = temperature, color = device)) +
  geom_line(na.rm = TRUE) +
  geom_smooth(na.rm = TRUE)
 


print(temp_plot)

