setwd("C:/Users/aluno/Documents/Leonardo/curso-r-2016/Lab2/")

arq <- '_source/assets/dados/arq.txt'

dados <- read.table(file = arq, sep=';')

str(dados)

#RDS

link_pnud <- 'https://www.dropbox.com/s/seqctcl46qeemgu/pnud_simplificado.rds?dl=1'

tmp <- tempfile()

download.file(link_pnud, tmp, quiet = TRUE)

pnud <- readRDS(tmp)

read.table()

file.remove(tmp)

# CSV

link_pnud <-'https://www.dropbox.com/sh/c54yhhxuk82jdmp/AADrl_pIy4v5Gxb90ySPZ3aCa/pnud.csv?dl=1'

tmp <- tempfile()

download.file(link_pnud, tmp, quiet = TRUE)

pnud <- read.table(tmp, sep=',', header = TRUE)

file.remove(tmp)

pnud$idhm[pnud$ano==2010 & pnud$municipio=="OSASCO"]
