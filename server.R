#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Add QuantMod Library
list.of.packages <- c("quantmod")
#checks if quantmod is installed
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
#if it is not installed, the package is installed
if(length(new.packages)) install.packages(new.packages)
#the libary is initialized
library(quantmod) 

# Define server logic required to draw a chart
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    #Enter Apple Ticker Symbol
    getSymbols("AAPL")
    
    strSubset <- strSubset <- paste("last" , input$iweeks  ,"weeks")
    
    # generate AAPL charts based on previous input$iweeks from ui.R
    # this function outputs a chart that becomes the functions output
    chartSeries(AAPL, subset=strSubset)
    
    
  })
  
})
