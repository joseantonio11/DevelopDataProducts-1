library(shiny)
library(markdown)

shinyUI(
  navbarPage("Graphically Solving A Two-Variable Linear Programming Problem",
  
  tabPanel("Plot",
    sidebarPanel(
      numericInput('profittablewine', 'Profit ($/unit) for Table Wine', 8, min = 1, max = 20, step = 1),
      numericInput('profitdesertwine', 'Profit ($/unit) for Desert Wine', 3, min = 1, max = 15, step = 1),
    
      sliderInput("labor", "Labor Hours Available", min = 10, max = 300, value = 200),
      sliderInput("time", "Bottling Hours Available", min = 10, max = 200, value = 80),
      sliderInput("profit", "Profit Desired", min = 0, max = 36000, value = 2225)
    ),
    mainPanel(
      h3('The data you have selected are:'),  
      tableOutput("obj"),

      plotOutput('plot')
    )
  ), 

  
  tabPanel("About",
    mainPanel(
      includeMarkdown("help.md")
    )
  ) 
))