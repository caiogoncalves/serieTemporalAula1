
#Define o dataFrame da regressão
st <- data.frame(tempo = c(1,2,3,4,5,6), result = c(14,16,19,22,24,26))
#define o data frame da projeção
proj <- data.frame(tempo = c(7), result = "")

### cira o objeto da projeção
reglin <- lm(result ~ tempo, data = st)
#prediz o valor do objeto
round(predict(proj,object = reglin), 2)
