library(shiny)

x<- -5:5


deathRisk <- function(id1,id2) {if ((id2 == 1) && (id1 <=120) && (id1 >0))
                                   max(round((120 - id1)*85/120) + sample(x) [1],0)
else if ((id2 == 2) && (id1 <=120) && (id1 >0))
  max(round((120 - id1)*80/120) + sample(x) [1],0)
else if (((id2 == 2) || (id2 == 1)) &&  (id1 ==0)) "... enter your age"
else "Congrats, special offer for YOU at only 1000 $, suscribe NOW!"}

shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$id2})
#     output$odate <- renderPrint({input$date})
    output$prediction <- renderPrint({
      input$goButton
      isolate(deathRisk(input$id1,input$id2))
      })
  }
)
