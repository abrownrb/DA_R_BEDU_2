mc_responses <- read.csv("/Users/aliciabrown/Documents/BEDU/A2-Estadistica-Programacion-con-R-2020-master/Sesion-07/Ejemplo-01/multiple_choice_responses.csv")

summ <- mc_responses %>% group_by(Q3) %>% summarise(users = length(Q3)) 

summ <- summ[order(-summ$users),]

summ %>% ggplot() +
  geom_bar(aes(x = reorder(Q3, users), y = users, fill=reorder(Q3, users)), stat = 'identity') 

p <- summ[1:50,] %>% ggplot() +
  geom_bar(aes(x = reorder(Q3, users), y = users, fill=reorder(Q3, users)), stat = 'identity') 
p

p <- p + coord_flip()
p

p <- p + geom_text(aes(x = reorder(Q3, users), y = users,label=users), hjust=-0.1) +
  annotate("text", x = 31.1, y=750, label = "<- lugar 20!") +
  scale_fill_manual(values=c(rep('#8D8A89',30), "#208600",rep('#8D8A89',length(unique(mc_responses$Q3))-31))) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6),legend.position = "none") +
  xlab('top 50 paises')+
  ylab("numero de usuarios")
p
