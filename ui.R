
library(shiny)
shinyUI(pageWithSidebar(
      headerPanel("Vehicle properties from the Motor Trend data set"),
      sidebarPanel(
            selectInput('variable', h4("Car Specifications"), 
                         c("MPG" = "MPG", "Horsepower" = "HP",
                          "Engine Displacement" = "DISP",
                           "Cylinders" = "CYL", "Weight" = "WT")),
      h5("Documentation"),
      "This Shiny app allows you to explore some of the automobile specifications
      found in the Motor Trend data set. Depending on which specification you would like
      examine, a different histogram will be produced that shows the distribution for that
      specification. So, for example, if you choose Horsepower, then the histogram will 
      show the number of automobiles that have a horsepower falling in a certain range."
      ),
      mainPanel(
      plotOutput('newHist')
      )
))