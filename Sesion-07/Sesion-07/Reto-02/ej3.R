install.packages(waffle)
install.packages(magrittr)
install.packages(hrbrthemes)

library('waffle')
library('magrittr')
library('hrbrthemes')

filtered <- mc_responses %>% filter(Q1 == '25-29' & Q10 != '' & Q3 == 'Mexico')
counted <- filtered %>%
  count(Q10)

counted %>%  
  ggplot(aes(fill = Q10, values = n)) +
  geom_waffle(n_rows = 5, size = 0.33, colour = "white", flip = TRUE) +
  coord_equal() +
  theme_ipsum_rc(grid="") +
  ggtitle('Composición del ingreso de los kagglers en edad 25-29 (USD anual)') +
  theme_enhance_waffle() +
  scale_fill_brewer(palette="Paired")