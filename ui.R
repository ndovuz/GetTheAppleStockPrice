#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)



# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Apple (AAPL) Stock Price In The Previous Weeks"),
  
  # Sidebar with a slider input for number of previous weeks 
  sidebarLayout(
    sidebarPanel(
       sliderInput("iweeks",
                   "Number of previous weeks:",
                   min = 1,
                   max = 50,
                   value = 3)
    ),
    
    # Show a plot of the stock chart
    mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotOutput("distPlot") ), 
        tabPanel("Documentation", 
                 h4("Description"),
                 p("The purpose of the this application is to allow a user to observe Apple (AAPL) stock for customable number of previous weeks."),
                 h4("Usage"),
                 p("After the application launches, the user can slide bar between 1 to 50 weeks. After the user releases the mouses, the window on the right will render the requested stock history."),
                 h4("Libraries"),
                 p("The libraries used by this application are" ,strong("quantmod"), " and ", strong("shiny"), ".")

      )
    )
    
    
  
    
  )
)
)
)


