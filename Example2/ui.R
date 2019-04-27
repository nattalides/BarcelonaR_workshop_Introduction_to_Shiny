ui <- fluidPage(
  
  titlePanel("Shiny apps are great!"),
  
  sidebarLayout(
    sidebarPanel(
      radioButtons(inputId = "number",
                   label = "Number of simulations:",
                   choices = c(1000, 5000, 10000),
                   inline = TRUE) # put radio buttons in horizontal line
    ),
    
    mainPanel(
      plotOutput("distPlot")
    )
  )
)