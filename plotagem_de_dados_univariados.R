
# plotagem de dados biovolume ---------------------------------------------

decapoda %>% head()
dados_para_plotagem <- decapoda %>%
  select(
    Periodo, Turno, Profundidade, Densidade_ind.m3, biovolume
  )

y_label = bquote('Biovolume'~(mm^-3~m^-3))

biovolume_profundidade <- ggplot(dados_para_plotagem, aes(Profundidade, biovolume, fill = Turno))+
  geom_boxplot(alpha = .6)+
  coord_trans(y = 'log10')+
  scale_y_continuous(breaks = c(10, 50, 100, 250, 500, 1000, 2000))+
  scale_fill_brewer(palette = "Dark2")+
  labs(y = y_label)+
  tema_boxplot




  