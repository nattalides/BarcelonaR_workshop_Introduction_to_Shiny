library(shiny)

server <- function(input, output) {
  
  sim_data <- reactive({
    rnorm(input$number)
  })
  
  output$distPlot <- renderPlot({
    x <- sim_data()
    
    hist(x, col = input$colour)
  })
}