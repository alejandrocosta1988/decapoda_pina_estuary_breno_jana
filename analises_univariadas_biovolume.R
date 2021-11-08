
# Análises com dados de biovolume -----------------------------------------

library(tidyverse)

dados_anova <- decapoda %>%
  select(
    Periodo, Turno, Profundidade, biovolume
  )

# Turno e profundidade
modelo_turno_profundidade <- lm(log(biovolume) ~ Turno * Profundidade, data = dados_anova)
shapiro.test(resid(modelo_turno_profundidade))
bartlett.test(log(biovolume) ~ Turno, data = dados_anova)
bartlett.test(log(biovolume) ~ Profundidade, data = dados_anova)
anova(modelo_turno_profundidade)

range_biovolume <- dados_anova$biovolume %>% range()

dados_anova %>% filter(biovolume == range_biovolume[1])
dados_anova %>% filter(biovolume == range_biovolume[2])

# Período sazonal
modelo_periodo_sazonal <- lm(log(biovolume) ~ Periodo, data = dados_anova)
shapiro.test(resid(modelo_periodo_sazonal))
bartlett.test(log(biovolume) ~ Periodo, data = dados_anova)
t.test(biovolume ~ Periodo, data =  dados_anova)
