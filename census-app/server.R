library("shiny")
library(maps)
library(mapproj)
source("helpers.R")
counties <- readRDS("data/counties.rds")


shinyServer(
  function(input, output) {
    
    output$map <- renderPlot({ 
            data <- switch(input$var,
                      "Percent White" = counties$white
                    , "Percent Black" = counties$black
                    , "Percent Hispanic" = counties$hispanic
                    , "Percent Asian" = counties$asian
            )
            raceColor <- switch(input$var,
                           "Percent White" = "darkgreen"
                           , "Percent Black" = "black"
                           , "Percent Hispanic" = "darkred"
                           , "Percent Asian" = "darkorchid"
            )
            plotTitle <- switch(input$var,
                            "Percent White" = "% White"
                            , "Percent Black" = "% Black"
                            , "Percent Hispanic" = "% Hispanic"
                            , "Percent Asian" = "% Asian"
            )            
            percent_map(var = data, color = raceColor, legend.title = plotTitle, input$range[1], input$range[2])
    })
    

  }
)