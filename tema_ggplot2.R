
# tema_ggplot2 ------------------------------------------------------------

library(ggplot2)

tema  <- theme(
  panel.background = element_rect(fill = "white", colour = "black"),
  panel.grid = element_blank(),
  legend.key = element_blank(),
  axis.text = element_text(colour = "black", size = 10)
)

tema_boxplot  <- theme(
  panel.background = element_rect(fill = "white", colour = "black"),
  panel.grid.major.y = element_line(colour="gray90", linetype = 2),
  legend.key = element_blank(),
  axis.text = element_text(colour = "black", size = 10)
)
