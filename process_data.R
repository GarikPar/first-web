library(tidyverse)
library(knitr)

vazgen <- read_csv("vazgen.csv")
#maralik <- read_csv("maralik.csv")

#merged <- rbind(vazgen, maralik)


temp_vazgen <- vazgen|>
  select(time, temperature)|>
   arrange(desc(temperature))

temp_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = temperature, color = device)) +
  geom_line(na.rm = TRUE, color = "#D55E00") +
  geom_smooth(na.rm = TRUE)
 


print(temp_plot)

hum_vazgen <- vazgen|>
  select(time, humidity)|>
  arrange(desc(humidity))

hum_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = humidity, color = "blue")) +
  geom_line(na.rm = TRUE, color = "steelblue") +
  geom_smooth(na.rm = TRUE)

print(hum_plot)

press_vazgen <- vazgen|>
  select(time, pressure)|>
  arrange(desc(pressure)) 

press_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = pressure, color = device)) +
  geom_line(na.rm = TRUE, color = "orange") +
  geom_smooth(na.rm = TRUE)

print(press_plot)

pm1_vazgen <- vazgen|>
  select(time, pm1)|>
  arrange(desc(pm1)) 

pm1_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = pm1, color = device)) +
  geom_line(na.rm = TRUE, color = "black") +
  geom_smooth(na.rm = TRUE)

#print(pm1_plot)

pm2_5_vazgen <- vazgen|>
  select(time, pm2_5)|>
  arrange(desc(pm2_5)) 

pm2_5_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = pm2_5, color = device)) +
  geom_line(na.rm = TRUE, color = "#00AFBB") +
  geom_smooth(na.rm = TRUE)

#print(pm2_5_plot)

pm10_vazgen <- vazgen|>
  select(time, pm10)|>
  arrange(desc(pm10)) 

pm10_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = pm10, color = device)) +
  #geom_line(na.rm = TRUE, color = "#C4961A") +
  geom_smooth(na.rm = TRUE, color = "#C4961A")

#print(pm10_plot)




