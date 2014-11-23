library(shiny)

data(mtcars)
Manuals <- mtcars[mtcars$am==1,]
Automatics <- mtcars[mtcars$am==0,]
shinyServer(
      function(input,output){
            output$newHist <- renderPlot({
                  if (input$variable == "WT"){
                        plot(mtcars$wt, mtcars$mpg, type="n", frame=FALSE, xlab="weight, lbs/1000", ylab="MPG")
                        abline(lm(Manuals$mpg ~ Manuals$wt), col="lightblue")
                        abline(lm(Automatics$mpg ~ Automatics$wt), col="red")
                        points(Manuals$wt, Manuals$mpg, pch = 21, bg = "lightblue")
                        points(Automatics$wt, Automatics$mpg, pch = 21, bg = "red")
                        legend("topright", inset=c(0,0.2), pch=21, pt.bg=c("lightblue","red"), legend=c("Manual", "Automatic"))}
                  else if (input$variable == "HP"){
                        plot(mtcars$hp, mtcars$mpg, type="n", frame=FALSE, xlab="horsepower", ylab="MPG")
                        abline(lm(Manuals$mpg ~ Manuals$hp), col="lightblue")
                        abline(lm(Automatics$mpg ~ Automatics$hp), col="red")
                        points(Manuals$hp, Manuals$mpg, pch = 21, bg = "lightblue")
                        points(Automatics$hp, Automatics$mpg, pch = 21, bg = "red")
                        legend("topright", inset=c(0,0.2), pch=21, pt.bg=c("lightblue","red"), legend=c("Manual", "Automatic"))}
                  else if (input$variable == "DISP"){
                        plot(mtcars$disp, mtcars$mpg, type="n", frame=FALSE, xlab="displacement, cu. in", ylab="MPG")
                        abline(lm(Manuals$mpg ~ Manuals$disp), col="lightblue")
                        abline(lm(Automatics$mpg ~ Automatics$disp), col="red")
                        points(Manuals$disp, Manuals$mpg, pch = 21, bg = "lightblue")
                        points(Automatics$disp, Automatics$mpg, pch = 21, bg = "red")
                        legend("topright", inset=c(0,0.2), pch=21, pt.bg=c("lightblue","red"), legend=c("Manual", "Automatic"))}
                  else if (input$variable == "CYL"){
                        plot(mtcars$cyl, mtcars$mpg, type="n", frame=FALSE, xlab="horsepower", ylab="MPG")
                        abline(lm(Manuals$mpg ~ Manuals$cyl), col="lightblue")
                        abline(lm(Automatics$mpg ~ Automatics$cyl), col="red")
                        points(Manuals$cyl, Manuals$mpg, pch = 21, bg = "lightblue")
                        points(Automatics$cyl, Automatics$mpg, pch = 21, bg = "red")
                        legend("topright", inset=c(0,0.2), pch=21, pt.bg=c("lightblue","red"), legend=c("Manual", "Automatic"))}
            })

      }
)