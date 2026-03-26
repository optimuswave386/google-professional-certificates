install.packages("pak")

library("ggplot2")
library("palmerpenguins")

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,alpha=species),color="purple")
ggplot(data=penguins)

glimpse(penguins)
?geom_point()

ggplot(data=penguins) + 
 geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) + 
 geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=penguins) + 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

ggplot(data=penguins) + 
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(color=species))+facet_wrap(~species)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="purple")+
  facet_grid(~sex)

?aes()

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=clarity,fill=cut))+
  facet_wrap(~cut)

library(tidyverse)
library(readxl)
library(readr)
hotel_bookings <- read_csv("Downloads/hotel_bookings.csv")
View(hotel_bookings)

ggplot(data=hotel_bookings) + 
  geom_bar(mapping = aes(x = distribution_channel)) + 
  facet_wrap(~deposit_type)

data %>% 
  filter(variable1 == "DS") %>% 
  ggplot(aes(x = weight, y = variable2, colour = variable1)) + 
  geom_point(alpha = 0.3,  position = position_jitter()) + stat_smooth(method = "lm")


head(hotel_bookings)
colnames(hotel_bookings)
ggplot(data = hotel_bookings) + geom_point(mapping = aes(x = lead_time, y = children))
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = hotel, fill = market_segment))
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = hotel)) + facet_wrap(~market_segment)

onlineta_city_hotels <- filter(hotel_bookings, (hotel=="City Hotel" & hotel_bookings$market_segment=="Online TA"))
View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
View(onlineta_city_hotels_v2)

ggplot(data = onlineta_city_hotels) + geom_point(mapping = aes(x = lead_time, y = children))




?geom_point()
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species", caption = "Data collected")
  
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species", caption = "Data collected")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",size=4.5,angle=45,fontface="bold",color="purple")

p <- ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species", caption = "Data collected")
p + annotate("text",x=220,y=3500,label="The Gentoos are the largest",size=4.5,angle=45,fontface="bold",color="purple")















install.packages("rmarkdown")




