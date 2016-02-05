library(shiny)
library(ggplot2)


fluidPage(  
  
  titlePanel("Laboratório VIII"),
  
  sidebarLayout(
    sidebarPanel(
      
      # coloque aqui um seletor de qual variável do banco de dados será a resposta
      
      # (somente 'price', 'carat', 'x', 'y', 'z')
      
      selectInput("resposta", label = h3("Resposta"), 
                  choices = list("Price" = 'price', "Carat" = 'carat', "X" = 'x', 'Y' = 'y', "Z" = 'z'), 
                  selected = 'price'),
      
      # coloque aqui um seletor de qual variável será a explicativa
      # (somente 'price', 'carat', 'x', 'y', 'z')
      
      selectInput("x", label = h3("Explicativa"), 
                  choices = list("Price" = 'price', "Carat" = 'carat', "X" = 'x', 'Y' = 'y', "Z" = 'z'), 
                  selected = 'price')
    ),
    
    mainPanel(
      tags$h2('Gráfico!'),
      plotOutput("reta_ajustada")
    )
  )
)