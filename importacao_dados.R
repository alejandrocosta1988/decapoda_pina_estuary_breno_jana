
# Dados -------------------------------------------------------------------

carregarDados <- function() {
  
  inFile = "Decapoda.breno.biovol.csv";
  dados = read.csv2(inFile);
  
  dados$Mare = factor(dados$Mare, 
                      levels = unique(dados$Mare), 
                      labels = unique(dados$Mare));
  
  dados$Turno = factor(dados$Turno, 
                       levels = unique(dados$Turno), 
                       labels = unique(dados$Turno));
  
  dados$Periodo = factor(dados$Periodo, 
                         levels = unique(dados$Periodo), 
                         labels = unique(dados$Periodo));
  
  dados$Profundidade = factor(dados$Profundidade, 
                              levels = unique(dados$Profundidade), 
                              labels = unique(dados$Profundidade));
  
  dados <- dados[,-seq(7,10,1)];
  
  return(dados)
  
}

decapoda <- carregarDados()

rm(carregarDados)
