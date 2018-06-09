
#Define o dataFrame da regressão
st <- data.frame(tempo = c(14,16,19,22,24), 
                 result = c(16,19,22,24,26))
#define o data frame da projeção
proj <- data.frame(tempo = c(26), result = "")

### cira o objeto da projeção
reglin <- lm(result ~ tempo, data = st)
#prediz o valor do objeto
round(predict(proj,object = reglin), 2)
summary(reglin)

#Define o dataFrame da regressão
st <- data.frame(x1 = c(14,16,19,22), 
                 x2 = c(16,19,22,24),
                 y = c(19,22,24,26))
#define o data frame da projeção
proj <- data.frame(x1 = c(24),x2 = c(26), y = "")

### cira o objeto da projeção
reglin <- lm(y ~ ., data = st)
#prediz o valor do objeto
round(predict(proj,object = reglin), 2)
summary(reglin)
