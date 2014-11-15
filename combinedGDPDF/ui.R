library(shiny)
library(ggplot2)
library(devtools)
load("combinedGDPDF.rda")

shinyUI(pageWithSidebar(
  headerPanel('GDP: Example of DataTable of Large Dataframe'),
  sidebarPanel(
    checkboxGroupInput('show_vars', 'Columns in Table to show:', names(combinedGDPDF)[1:8],
                       selected = names(combinedGDPDF)[1:8])
    ),
  mainPanel(
    tabsetPanel(
      tabPanel('GDP DataTable',
               dataTableOutput("mytable1"))
  )
    )))
