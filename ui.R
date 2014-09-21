library(shiny)

# shinyUI(pageWithSidebar(
shinyUI(fluidPage(
#   headerPanel("Madam Irma, What is my future?"),
  titlePanel("Madam Irma, What is my future?"),
  sidebarLayout(
  sidebarPanel(
    numericInput('id1', 'Enter your age:', 0, min = 0, max = 120, step = 1),
    radioButtons("id2", "Enter your sex:",
                       c("Female" = "1",
                         "Male" = "2",
                         "Other" = "3")),
    actionButton("goButton", "Please Madam Irma,tell me!"),
    # adding the new div tag to the sidebar            
    tags$div(class="header", checked=NA,
             tags$p(" "),
             tags$p("Want to know more about Madam Irma:"),
             tags$a(href="index.html", "Click Here!")
    )
    
#     dateInput("date", "Date:")
  ),
  mainPanel(
    h3('Your choices'),
    h4('Your age'),
    verbatimTextOutput("oid1"),
    h4('Your sex'),
    verbatimTextOutput("oid2"),
#     h4('The date entered, defect =TODAY'),
#     verbatimTextOutput("odate"),
    h1('-->  from now, you have this number of years to live: '),
    verbatimTextOutput("prediction")
    
  )
)
))
