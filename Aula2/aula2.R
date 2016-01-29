dbl_var <- c(1, 2.5, 4.5) #DOUBLE
int_var <- c(1L, 6L, 10L) # Com o sufixo L temos números inteiros em vez de double
log_var <- c(TRUE, FALSE, T, F) # Use TRUE ou FALSE (T ou F) para vetores lógicos
chr_var <- c("essas são", "algumas strings") # strings (ou characters). Colocar entre "" ou ''.

typeof(dbl_var) # [1] "double"
typeof(int_var) # [1] "integer"
typeof(log_var) # [1] "logical"
typeof(chr_var) # [1] "character"

is.integer(dbl_var)   # [1] FALSE
is.double(dbl_var)    # [1] TRUE
is.numeric(dbl_var)   # [1] TRUE
is.logical(log_var)   # [1] TRUE
is.character(chr_var) # [1] TRUE


c("a", 1) # um 'character' e um 'integer' se transformam em dois 'characater'

c(T, 1) # um 'logical' e um 'integer' se transformam em dois 'integer'

sum(c(T, F, T, F, T))

f <- factor(c("aventura", "aventura", "aventura", "terror", "comédia", "drama"))
f

levels(f)

f <- factor(c("2", "3", "1", "10"))

as.numeric(f) # não funciona

as.numeric(as.character(f)) # funciona

# Um vetor para descrever todas as dimensões
arr <- array(1:12, c(3,2,2))

# Dois argumentos para determinar o número de linahs e colunas
mat <- matrix(1:6, ncol = 3, nrow = 2)

dim(arr)    # [1] 3 2 2
length(arr) # [1] 12
nrow(arr)   # [1] 3
ncol(arr)   # [1] 2

dim(mat)    # [1] 2 3
length(mat) # [1] 6
nrow(mat)   # [1] 2
ncol(mat)   # [1] 3

dim(c(1,2,3))    # NULL
nrow(c(1,2,3))   # NULL
ncol(c(1,2,3))   # NULL
length(c(1,2,3)) # [1] 3

list(
  numeros = c(1:5),
  sexo = c("homem", "mulher"),
  logico = c(T, F, T),
  tabela_fipe = data.frame(preco = c(10000, 20000, 300000), carro = c("Fusca", "Gol 1.0", "Ferrari"))
)

df <- data.frame(x = 1:4, 
                 cor = c("amarelo", "vermelho", "azul", "verde"), 
                 z = T, 
                 stringsAsFactors = F)
df

str(df)

names(df)

names(df) <- c("a", "b", "c")

names(df)

df1 <- data.frame(x = 1:3, y = c("s", "s", "s"), z = T)
df2 <- data.frame(x = 1:2, y = c("n", "n"), z = F)
df3 <- data.frame(a = 3:1, b = c("?", "?", "?"))

rbind(df1, df2)
cbind(df1, df3)


x <- c(13, 8, 5, 3, 2, 1, 1) 
x[c(3, 2, 1)] # seleciona os três primeiros elementos do vetor na ordem especificada.
order(x)
x[order(x)] # seleciona os elementos do vetor em ordem crescente

x[-c(2,5,6)]

x == 1
x[x==1]

x > 5
x[x>5]

m <- matrix(c(1:5, 11:15), nrow=5, ncol=2)
m

m[5,2] # Retorna o elemento da linha 5 e coluna 2.
m[,1] # Retorna todos os elementos da coluna 1.

m[3,] # Retorna todos os elementos da linha 3.

m[m[,1] %% 2 == 0, ] # Retorna as linhas cujos elementos da primeira coluna sejam pares.

x <- c(13, 8, 5, 3, 2, 1, 1)
x[x > 5] <- 1000
x

summary(mtcars)

summary(mtcars$mpg)

data(diamonds, package = 'ggplot2')

mean(diamonds$carat)
median(diamonds$carat)

sd(diamonds$carat)

quantile(diamonds$carat, probs = c(0.25, 0.75))

table(diamonds$color)
table(diamonds$color, diamonds$clarity)
