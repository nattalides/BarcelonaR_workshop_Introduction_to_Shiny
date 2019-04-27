ui <- fluidPage(
  
  titlePanel("A reactive plot"),
  
  sidebarLayout(
    sidebarPanel(
      radioButtons(inputId = "number",
                   label = "Number of simulations:",
                   choices = c(1000, 5000, 10000),
                   inline = TRUE),
      selectInput(inputId = "colour",
                  label = "Choose colour:",
                  choices = c("red", "blue", "green"))
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)