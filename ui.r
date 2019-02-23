#structure of this code (ie the library, shiinyUI(pageWithSideBar, 
#headerPanel, sideBarPanel, selectInput,mainPanel but not the code inside of the parentheses))
#from http://rstudio.github.io/shiny/tutorial/#hello-shiny and 
#https://www.youtube.com/watch?v=_0ORRJqctHE

library(shiny)
library(datasets)

shinyUI(pageWithSidebar(
  headerPanel(h1("Bar Charts Representing Employee Attitudes Toward Their Companies", align = "center") ),
  sidebarPanel(align="center",width=10,
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



