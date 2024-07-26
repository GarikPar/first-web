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
  #geom_line(na.rm = TRUE, color = "#D55E00") +
  geom_smooth(na.rm = TRUE, color = "#D55E00") + 
  labs(title = "Temperature in Yerevan from November 2023 to July 2024",
       x = "Months",
       y = "Temperature")
 


print(temp_plot)

hum_vazgen <- vazgen|>
  select(time, humidity)|>
  arrange(desc(humidity))

hum_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = humidity, color = "blue")) +
  geom_smooth(na.rm = TRUE, color = "steelblue") + 
  labs(title = "Humidity in Yerevan from November 2023 to July 2024",
       x = "Months",
       y = "Humidity")
ggsave(hum_plot, file = "size_v_hum.png")


#print(hum_plot)

press_vazgen <- vazgen|>
  select(time, pressure)|>
  arrange(desc(pressure)) 

press_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = pressure, color = device)) +
  #geom_line(na.rm = TRUE, color = "orange") +
  geom_smooth(na.rm = TRUE, color = "orange") +
  labs(title = "Pressure measurements in Yerevan from November 2023 to July 2024",
       x = "Months",
       y = "Pressure")
ggsave(press_plot, file = "size_v_press.png")
#print(press_plot)

pm1_vazgen <- vazgen|>
  select(time, pm1)|>
  arrange(desc(pm1)) 

pm1_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = pm1, color = device)) +
  geom_smooth(na.rm = TRUE, color = "black") +
  labs(title = "Air quality(pm1) in Yerevan from November 2023 to July 2024",
       x = "Months",
       y = "Air Quality(pm1)")

ggsave(pm1_plot, file = "size_v_pm1.png")
#print(pm1_plot)

pm2_5_vazgen <- vazgen|>
  select(time, pm2_5)|>
  arrange(desc(pm2_5)) 

pm2_5_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = pm2_5, color = device)) +
 # geom_line(na.rm = TRUE, color = "#00AFBB") +
  geom_smooth(na.rm = TRUE, color = "#00AFBB") +
  labs(title = "Air quality(pm2_5) in Yerevan from November 2023 to July 2024",
       x = "Months",
       y = "Air Quality(pm2_5)")
ggsave(pm2_5_plot, file = "size_v_pm2_5.png")
#print(pm2_5_plot)

pm10_vazgen <- vazgen|>
  select(time, pm10)|>
  arrange(desc(pm10)) 

pm10_plot <- vazgen|>
  ggplot(mapping = aes(x = time, y = pm10, color = device)) +
  #geom_line(na.rm = TRUE, color = "#C4961A") +
  geom_smooth(na.rm = TRUE, color = "#C4961A") +
  labs(title = "Air quality(pm10) in Yerevan from November 2023 to July 2024",
       x = "Months",
       y = "Air Quality(pm10)")
ggsave(pm10_plot, file = "size_v_pm10.png")
#print(pm10_plot)

#write_rds(temp_plot, file = "clean_temp.rds")
#ggsave(hum_plot, "size_v_hum.png")
#ggsave( press_plot, "size_v_press.png",)
#ggsave( pm1_plot, "size_v_pm1.png",)
#ggsave(pm2_5_plot, "size_v_pm2_5.png")
#ggsave(pm10_plot, "size_v_pm10.png",)




