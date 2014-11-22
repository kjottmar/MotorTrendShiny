library(shiny)
library(UsingR)
library(manipulate)
data(mtcars)

shinyServer(
      function(input,output){
            output$newHist <- renderPlot({
                  if (input$variable == "MPG"){
                        hist(mtcars$mpg, xlab='Miles Per Gallon', col='lightblue',main='Histogram', 
                             breaks=seq(8,36,by=2))}
                  else if (input$variable == "HP"){
                       hist(mtcars$hp, xlab='Horsepower', col='lightblue',main='Histogram', 
                            breaks=seq(0,400,by=50))}
                  else if (input$variable == "DISP"){
                        hist(mtcars$disp, xlab='Displacement, cu. in.', col='lightblue',main='Histogram', 
                             breaks=seq(0,500,by=50))}
                  else if (input$variable == "CYL"){
                        hist(mtcars$cyl, xlab='Cylinders', col='lightblue',main='Histogram')} 
                             #breaks=seq(2,6,by=2))}
                  else if (input$variable == "WT"){
                        hist(mtcars$wt, xlab='Weight, lbs/1000', col='lightblue',main='Histogram', 
                             breaks=seq(1,7,by=0.5))}
            })

      }
)