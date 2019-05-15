library(shiny)

# Load the 'datasets' package which contains 'votes.repub' dataset

library(cluster)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Votes for Republican Candidate in Presidential Elections"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with input to select the year of election
      sidebarPanel(
        selectInput("year_election", "Select Year of Election:", choices=colnames(votes.repub)),
        hr(),
        helpText("This shiny app shows Votes for Republican Candidate in Presidential Elections per State"),
        hr(),
        helpText("Source code can be found at https://github.com/Adnanof00/DDP/")
      ),
      # Create a spot for the barplot
      mainPanel(
        plotOutput("votePlot"),
        h3('Mean of Votes for Republican Candidate(%) '),
        verbatimTextOutput("mean_value")
      )
    )
  )
)