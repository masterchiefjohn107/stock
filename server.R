shinyServer(function(input,output){
  dts <- reactive({
    getSymbols(input$Stock, src = "yahoo",auto.assign = FALSE)
  })
  
  output$dd <- renderPlot({
    dts1 <- function(){
      if (input$Log) return(log(dts()))
      else return(dts())
    }
    chartSeries(dts1())
  })
})