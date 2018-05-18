library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Avengers Tweet Sentiment Analysis"),
  
  # Getting User Inputs
  
  sidebarPanel(
    
    sliderInput("maxTweets","Number of recent tweets to use for analysis:",min=5,max=1000,value=450), 
    submitButton(text="Analyse")
    
  ),
  
  mainPanel(
    
    
    tabsetPanel(
     
      tabPanel("Histogram",HTML
               ("<div><h3> Histograms graphically depict the positivity or negativity of peoples' opinion about of the Avengers - Infinite War
                 </h3></div>"), plotOutput("histPos"), plotOutput("histNeg"), plotOutput("histScore")
               ),
      
      
      tabPanel("Pie Chart",HTML("<div><h3>Pie Chart</h3></div>"), plotOutput("piechart"),HTML
               ("<div><h4> A pie chart is a circular statistical graphic, which is divided into slices to illustrate the sentiment of the Avengers - Infinite War. 
              In a pie chart, the arc length 
                 of each slice (and consequently its central angle and area), is proportional to the quantity it represents.</h4></div>")
               
               ),
      
      tabPanel("Table",HTML( "<div><h3> Depicting sentiment in a tablular form on a scale of 5 </h3></div>"), tableOutput("tabledata"),
               HTML ("<div><h4> The table depicts the sentiment (positive, negative or neutral) of the tweets 
                     associated with the Avengers - Infinite War by showing the score for each type of sentiment. </h4></div>")),
      
    
      tabPanel("WordCloud",HTML("<div><h3>Most used words associated with the Avengers - Infinite War</h3></div>"),plotOutput("word"),
               HTML
               ("<div><h4> A word cloud is a visual representation of text data, typically used to depict
                  keyword metadata (tags) on websites, or to visualize free form text.
                  This format is useful for quickly perceiving the most prominent terms and
                  for locating a term alphabetically to determine its relative prominence.
                 </h4></div>"))
      
      
                   )
               )
  
      ))
