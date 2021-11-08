
# plotagem de dados biovolume ---------------------------------------------

decapoda %>% head()
dados_para_plotagem <- decapoda %>%
  select(
    Periodo, Turno, Profundidade, Densidade_ind.m3, biovolume
  )

y_label = bquote('Biovolume'~(mm^-3~m^-3))

biovolume_profundidade <- ggplot(dados_para_plotagem, aes(Profundidade, biovolume, fill = Turno))+
  geom_boxplot(alpha = .6, show.legend = FALSE)+
  coord_trans(y = 'log10')+
  scale_y_continuous(breaks = c(10, 50, 100, 250, 500, 1000, 2000))+
  scale_fill_brewer(palette = "Dark2")+
  labs(y = y_label)+
  tema_boxplot
# Dia - esverdeado; Noite - avermelhado

y_label = bquote('Densidade '~(ind~m^-3))

densidade_profundidade <- ggplot(dados_para_plotagem, aes(Profundidade, Densidade_ind.m3, fill = Turno))+
  geom_boxplot(alpha = .6, show.legend = FALSE)+
  scale_fill_brewer(palette = "Dark2")+
  scale_y_continuous(limits = c(0, 350))+
  labs(y = y_label)+
  tema_boxplot
# Dia - esverdeado; Noite - avermelhado

library(gridExtra)
grid.arrange(densidade_profundidade, biovolume_profundidade, nrow=1)



# Período sazonal
y_label = bquote('Densidade '~(ind~m^-3))
x_label = "Período"

densidade_periodo <- ggplot(dados_para_plotagem, aes(Periodo, Densidade_ind.m3))+
  geom_boxplot(alpha = .6, fill = 'steelblue', width = .4)+
  scale_y_continuous(limits = c(0, 350))+
  labs(y = y_label, x=x_label)+
  tema_boxplot


y_label = bquote('Biovolume'~(mm^-3~m^-3))
biovolume_periodo <- ggplot(dados_para_plotagem, aes(Periodo, biovolume))+
  geom_boxplot(alpha = .6, fill = 'steelblue', width = .4)+
  coord_trans(y = 'log10')+
  scale_y_continuous(breaks = c(10, 50, 100, 250, 500, 1000, 2000))+
  scale_fill_brewer(palette = "Dark2")+
  labs(y = y_label, x=x_label)+
  tema_boxplot

grid.arrange(densidade_profundidade, biovolume_profundidade, densidade_periodo, biovolume_periodo, nrow=2)
