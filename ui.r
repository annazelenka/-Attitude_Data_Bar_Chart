#some of this code taken from this tutorial: http://rstudio.github.io/shiny/tutorial/#hello-shiny

library(shiny)
library(datasets)

shinyUI(pageWithSidebar(
  headerPanel(h1("Bar Charts Representing Employee Attitudes Toward Their Companies", align = "center") ),
  
  sidebarPanel(align="center",width=10,
               #sliderInput("", "Number of observations:", min = 1,max = 1000,value = 500)),
  
  selectInput("dataset", "choose a questionnaire question topic:",
              choices = c("handling of employee complaints",
                          "does not allow special privileges",
                          "opportunity to learn",
                          "raises based on performance",
                          "too critical",
                          "advancement"))),
  mainPanel(plotOutput("distPlot"))
  
  )
  
)



