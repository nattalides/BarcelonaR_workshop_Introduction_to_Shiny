library(shiny)

server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    # generate simulations based on input$number from ui.R
    x <- rnorm(input$number)
    
    hist(x, col = input$colour)
  })
}