# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
## server.R ##
library(shiny)

## Load USArrests dataset in the dataset
library(datasets)

## Define a server for the Shiny app
shinyServer(function(input, output) {
  
  ## Filter the data
  CrimeData <- data.matrix(USArrests[c("UrbanPop","Assault","Rape","Murder")])
  
  
  ## Fill in the spot we created for a plot
  output$crimePlot <- renderPlot({
    
    ## Create a barplot
    CrimePlot <- barplot(CrimeData[input$state, -1], 
                         main="Arrest Rate for Assult, Rape and Murder",
                         sub=input$state,
                         ylim=c(0,350),
                         col="red",
                         ylab="Arrests (per 100,000)",
                         xlab="Violent Crime Types Committed in")
    
    ## Add values to the plot   
    text(CrimePlot,
         round(CrimeData[input$state, 1]), 
         pos=3, 
         cex=1,
         labels=CrimeData[input$state, -1])
  })
  
})
