#facet

install.packages("tidyverse")
library(tidyverse)
mpg
ggplot(data = mpg)+
  geom_point(mapping = aes(x= displ, y= hwy, colour = class))

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y =hwy))+
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y =hwy))+
  facet_grid(drv ~ cyl)

ggplot(data = mpg)+
  geom_point(mapping = aes(x  = displ, y = hwy))+
  facet_grid(. ~ cyl)

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))+
  facet_grid(drv ~ .)

##geometric objects

install.packages("tidyverse")
library(tidyverse)

ggplot(data = mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))+
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point()+
  geom_smooth()


ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(colour = class))+
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping  = aes(colour = class))+
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)

  
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
    geom_point(mapping = aes(color = class)) + 
    geom_smooth(data = filter(mpg, class == "subcompact"))
  
