
library(tidyverse)
mc_responses <- read.csv("/Users/aliciabrown/Desktop/Sesion-07/Ejemplo-01/multiple_choice_responses.csv")
mc_responses$Q2 %>% as.factor() %>% summary()

ggplot(data = mc_responses, aes(x = Q2, fill = Q2)) +
  geom_bar() +
  scale_fill_manual(values=c("#D69CE1", "#037ffc", "#03fc98","#03fc98")) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6),legend.position = "none") +
  xlab('genero')+
  ylab("numero de usuarios")
