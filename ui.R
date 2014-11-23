
library(shiny)
shinyUI(pageWithSidebar(
      headerPanel("Vehicle properties from the Motor Trend data set"),
      sidebarPanel(
            selectInput('variable', h4("Car Specifications"), 
                         c("Horsepower" = "HP",
                          "Engine Displacement" = "DISP",
                           "Cylinders" = "CYL", "Weight" = "WT")),
      h5("Documentation"),
      "This Shiny app allows you to explore some of the automobile specifications
      found in the Motor Trend data set, and how they are related to fuel economy.
      Depending on which specification you would like to examine, a different 
      graph will be generated, showing the data points, as well as the linear
      regression. So, for example, if you choose Horsepower, then the graph will 
      show the relationship between horsepower and fuel economy for both automatics
      and manuals transmissions."
      ),

      mainPanel(
      plotOutput('newHist')
      )
))