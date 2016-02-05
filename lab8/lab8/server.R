library(shiny)
library(ggplot2)

# Ajusta modelo para as variaveis y e x no banco de dados diamonds
ajustar_modelo <- function(y, x){
  form <- as.formula(paste(y, x, sep='~'))
  modelo <- lm(form, data = diamonds)
  return(modelo)
}

shinyServer(function(input, output) {
  
  output$reta_ajustada <- renderPlot({
    
    library(ggplot2)
    
    # definição das variáveis 
    y <- input$resposta
    x <- input$x
    
    modelo <- ajustar_modelo(y, x)
    
    coeficientes <- coef(modelo)
    diamonds  %>%  ggplot(aes_string(x=x, y=y)) + 
      geom_point() + 
      geom_abline(intercept = coeficientes[1], slope = coeficientes[2], color= "red")
    
  })
  
})