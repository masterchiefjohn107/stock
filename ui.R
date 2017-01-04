require(shiny)
require(quantmod)
shinyUI(fluidPage(
  titlePanel("Hello R"),
  sidebarLayout(
    sidebarPanel(
      selectInput("Stock",label="Choose a stock",choices=c("GOOG","AAPL"),selected="GOOG"),
      checkboxInput("Log",label="Whether to log the price")
    ),
    mainPanel(
      plotOutput("dd")
    )
  )
))
