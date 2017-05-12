# This is the UI logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com

## ui.R ##
library(shiny)

## Load USArrests dataset in the dataset
library(datasets)

## Define the User Interface
shinyUI(
  
  ## Use a fluid Bootstrap layout
  fluidPage(    
    
    ## Give the page a title
    titlePanel(strong("Lookup 1973 Violent Crime Rates by US State")),
    
    ## Generate a row with a sidebar
    sidebarLayout(      
      
      ## Define the sidebar with one input to select a State
      sidebarPanel(
        selectInput("state", "Select US State:", 
                    choices=rownames(USArrests)),
        hr(),
        
        helpText("The USArrests dataset comes with R and contains 1973 arrests per 100,000 residents for assault, rape, and murder for each US State collected by World Almanac and Book of facts 1975. (Crime rates).  
                  Select a State in the text box above, and the Bar Graph on the right will display that State's 1973 arrest rates for Assult, Rape, and Murder with counts overlayed on the chart.")
        ),
      
      ## Present the bar plot of the state in the main panel
      mainPanel(
        plotOutput("crimePlot")
      )
    )
  )
)
