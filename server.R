library(shiny)
library(cluster)
# Server side code to handle user's selection
shinyServer(function(input, output) {
  
  ##Total Number of Death for this population group
  output$mean_value <- renderPrint({mean(complete.cases(votes.repub[,input$year_election]))}*100)
  
  # Fill in the spot we created for a plot
  output$votePlot <- renderPlot({
    # Render a barplot
    barplot(votes.repub[,input$year_election], 
            main=input$year_election,
            ylab="Votes for Republican Candidate in Presidential Elections per state",
            xlab="state:ALABAMA,ALASKA.....WYOMING",
            )
  })
})