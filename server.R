#lines 2-5 from http://rstudio.github.io/shiny/tutorial/#hello-shiny
library(shiny)
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    
    yValues <- 0
    attitudeXAxisList <- list(
      "handling of employee complaints" = 1,
      "does not allow special privileges" = 2,
      "opportunity to learn" = 3,
      "raises based on performance" = 4,
      "too critical" =5,
      "advancement" = 6
    )
    
    colorList <- list(
      "handling of employee complaints" = "red",
      "does not allow special privileges" = "orange",
      "opportunity to learn" = "yellow",
      "raises based on performance" = "green",
      "too critical" ="blue",
      "advancement" = "purple"
    )
    
    rowNumber <- attitudeXAxisList[input$dataset]
    color = colorList[input$dataset][[1]][1]
  
    barplot(attitude[,rowNumber[[1]][1]], 
            names.arg=rownames(attitude),
            xlab= "department number (departments were randomly chosen)",
            ylab="% favorable employee responses",
            main=paste("% favorable responses for ",input$dataset,sep=""),
            col=color)
  })
})