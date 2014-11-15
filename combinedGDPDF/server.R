library(shiny)
load("combinedGDPDF.rda")
shinyServer(function(input, output) {
  
  output$mytable1 = renderDataTable({
    library(ggplot2)
    combinedGDPDF[, input$show_vars, drop = FALSE]
  }, options = list(orderClasses = TRUE, lengthMenu = c(10, 20, 30, 40), pageLength = 10))
})
