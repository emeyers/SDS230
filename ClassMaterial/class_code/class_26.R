

# include the shiny package
library(shiny)






# 1. The function to create the user interface
ui <- fluidPage()      # closing parenthesis for the UI  






# 2. The function to create the server
server <- function(input, output) {}      # closing brace for the server function 







# 3. Putting UI and the server together to run
shinyApp(ui = ui, server = server) 















