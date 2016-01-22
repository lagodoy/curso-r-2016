library(dplyr)

data(pnud_muni, package = 'abjutils')


selecao_1 <- pnud_muni %>% 
  select( municipio, uf,  ano, gini, idhm, idhm_e, idhm_l, idhm_r) %>%
  filter(ano == 2010 & ( gini > 0.5 | idhm > 0.7) )

selecao_2 <- pnud_muni %>% 
  select( municipio, uf,  ano, gini, idhm, idhm_e, idhm_l, idhm_r) %>%
  filter( ano == 2010 & ( gini > 0.5 | idhm > 0.7) ) %>%
  mutate( idhm_p = paste(round( idhm * 100, 1) , "%" ) )

selecao_3 <- pnud_muni %>% 
  select( municipio, ufn,  ano, gini, idhm, idhm_e, idhm_l, idhm_r) %>%
  filter( ano == 2010 & ( gini > 0.5 | idhm > 0.7) ) %>%
  mutate( idhm_p = paste(round( idhm * 100, 1) , "%" ) ) %>%
  arrange( desc(idhm) ) %>%
  tbl_df() %>%
  head (n = 10 )

selecao_3 <- pnud_muni %>% 
  select( municipio, ufn,  ano, gini, idhm, idhm_e, idhm_l, idhm_r) %>%
  filter( ano == 2010 & ( gini > 0.5 | idhm > 0.7) ) %>%
  mutate( idhm_p = paste(round( idhm * 100, 1) , "%" ) ) %>%
  arrange( desc(idhm) ) %>%
  tbl_df() %>%
  head (n = 10 ) 

selecao_4 <- pnud_muni %>% 
  select( municipio, ufn,  ano, gini, idhm, idhm_e, idhm_l, idhm_r, espvida, popt) %>%
  filter( ano == 2000) %>% 
  group_by( ufn ) %>% 
  summarise(  x = sum(espvida*popt) / sum(popt)) %>% 
  arrange (desc(x))

library(tidyr)

install.packages("nycflights13")

library(nycflights13)
