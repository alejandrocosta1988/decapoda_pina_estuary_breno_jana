
# tema_ggplot2 ------------------------------------------------------------

library(ggplot2)

tema  <- theme(
  panel.background = element_rect(fill = "white", colour = "black"),
  panel.grid = element_blank(),
  legend.key = element_blank(),
  axis.text = element_text(colour = "black", size = 10)
)
