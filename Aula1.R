
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

####Regressao Multipla###########
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

########### exercicio 1############

arquivos <-  list.files()
arquivos <- arquivos[grepl(".csv", arquivos)]

proj1 <- read.csv2(arquivos[1])
names(proj1)[1] <- "x"
names(proj1)[2] <- "y"
names(proj1)[3] <- "z"
reglin1 <- lm(z ~ ., data = proj1)
projeta1 <- data.frame(x = proj1[nrow(proj1),2], y = proj1[nrow(proj1),3], z = "")
round(predict(projeta1,object = reglin1), 2)

proj2 <- read.csv2(arquivos[2])
names(proj2)[1] <- "x"
names(proj2)[2] <- "y"
names(proj2)[3] <- "z"
reglin2 <- lm(z ~ ., data = proj2)
projeta2 <- data.frame(x = proj2[nrow(proj2),2], y = proj2[nrow(proj2),3], z = "")
round(predict(projeta2,object = reglin2), 2)


proj3 <- read.csv2(arquivos[3])
names(proj3)[1] <- "x"
names(proj3)[2] <- "y"
names(proj3)[3] <- "z"
reglin3 <- lm(z ~ ., data = proj3)
projeta3 <- data.frame(x = proj3[nrow(proj3),2], y = proj3[nrow(proj3),3], z = "")
round(predict(projeta3,object = reglin3), 2)


proj4 <- read.csv2(arquivos[4])
names(proj4)[1] <- "x"
names(proj4)[2] <- "y"
# names(proj4)[3] <- "z"
reglin4 <- lm(y ~ ., data = proj4)
projeta4 <- data.frame(x = proj4[nrow(proj4),2], y = "")
round(predict(projeta4,object = reglin4), 2)
