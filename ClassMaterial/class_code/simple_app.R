

# include the shiny package
library(shiny)




# 1. The function to create the user interface
ui <- fluidPage(
  
  sliderInput(inputId = "num",  
              label = "Choose a number",  
              val = 25, min = 1, max = 100), 
  
  plotOutput("my_plot") 
  
  
) # closing parenthesis for the UI  






# 2. The function to create the server
server <- function(input, output) {
  
  
  output$my_plot <- renderPlot({
    
    
    hist(rnorm(input$num)) 
    
    
  })
  
  
}   # closing brace for the server function 







# 3. Putting UI and the server together to run
shinyApp(ui = ui, server = server) 















