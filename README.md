# About Attitude Data Bar Chart

This Shiny app was created to apply for an RStudio summer internship. 
I have not used R or Shiny before, so I followed some tutorials to learn about the basic structure of Shiny apps.

Specifically, the tutorials I used were:
* Abhinav Agrawal's [YouTube tutorial](https://www.youtube.com/watch?v=_0ORRJqctHE)  
* The [Hello Shiny tutorial](https://shiny.rstudio.com/articles/basics.html)

These taught me that Shiny apps have two main files, ie the user interface file and the server-side file.  
Also, I learned some general components of these, such as this structure:

`shinyServer(shinyServer(function(input, output) {`
 
  `output$distPlot <- renderPlot({`
  
However, the more nested parts of my code were put together by looking over R documentation 
and figuring out how to get the first element of a nested list in R, how to concatenate Strings, etc. 
In other words, I did not follow tutorials for those parts.

The data: [Chatterjee-Price Attitude Data](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/attitude.html).
