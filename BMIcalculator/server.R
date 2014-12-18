#library(shiny)
#shinyServer(
#        function(input,output){
#                
#        }
#                )


#BMI<-weight/(height/100)^2


BMI <- function(weight,height) round(weight/(height/100)^2,1)
shinyServer(
        function(input, output) {
                output$oweight <- renderPrint({input$weight})
                output$oheight <- renderPrint({input$height})
                output$BMIval <- renderPrint({BMI(input$weight,input$height)})
        }
)