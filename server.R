library(shiny)

shinyServer(
  function(input, output) 
  {
    # Fix up the maximum units sellable for both wines.
    unit_table = 1200
    unit_desert = 800
    
    labor_table = 0.2
    labor_desert = 0.6
    time_table = 0.3
    time_desert = 0.1
    
    # Reactive expression to compose a data frame containing all of the values
    sliderValues <- reactive({
      
      # Compose data frame
      data.frame(
        Name = c("Profit per table wine", 
                 "Profit per desert wine",
                 "Labor (hours) available",
                 "Bottling hours available",
                 "Profit desired"),
        Value = as.character(c(input$profittablewine, 
                               input$profitdesertwine,
                               input$labor,
                               input$time,
                               input$profit)), 
        stringsAsFactors = FALSE)
    }) 
    
    # Show the values using an HTML table
    output$obj <- renderTable({
      sliderValues()
    })

    # Calculate and draw the lines representing the constraints and objective function.
    output$plot <- renderPlot({
      plot(c(0,unit_table+400),c(0,unit_desert+200), col = "white", xlab = "Table Wine", ylab = "Desert Wine")
      rect(0,0, unit_table, unit_desert, col = 'bisque3')
      segments(0, input$labor/labor_desert, input$labor/labor_table, 0, col = 'blue', lwd = 2)
      segments(0, input$time/time_desert, input$time/time_table, 0, col = 'green', lwd = 2)
      segments(0, input$profit/input$profitdesertwine, input$profit/input$profittablewine, 0,
               lwd = 2, col = 'darkorange2', lty = 2)
      
    })  
    
  }
)