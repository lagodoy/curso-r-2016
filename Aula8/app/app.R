#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- shinyUI(fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      wellPanel(
        dateInput("date", label = h3("Date input"), value = "2014-01-01")
      ),
      
      wellPanel(
        checkboxGroupInput(inputId = 'cb', label = 'CheckBox', choices = c('a' = 'A', 'b' = 'B')),
        textInput("text", label = h3("Text input"), value = "Enter text..."),
        numericInput('n', label = 'N', value = 3)
      )
    ),
    mainPanel(
      fluidRow(
        plotOutput('id_graf')
      ),
      fluidRow(
        tableOutput('id_tab')
      )
      
    )
  )
))

# Define server logic required to draw a histogram
#tudo do shiney server é uma sessao
server <- shinyServer(function(input, output) {
  
  dados <- reactive( {
    n <- input$n
    mtcars[1:input$n]
  })
  
  output$id_graf <- renderPlot({
    pairs(dados())
  })
  
  output$id_tab <- renderTable({
    cor(dados())
  })
  
  
})

# Run the application 
shinyApp(ui = ui, server = server)