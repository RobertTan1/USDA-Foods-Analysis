header <- dashboardHeader(title = "Nutrient Exploration")

sidebar <- dashboardSidebar(sidebarMenu(
  menuItem("Analytics", tabName = "analytics"),
  menuItem("Nutrient dictionary", tabName = "dictionary"),
  menuItem("About", tabName = "about")
))

body <- dashboardBody(tabItems(
  tabItem(
    tabName = "analytics",
         
    # Selection of nutrients to plot
    selectInput(),
    # The plot, hoverable, can see what foods are
    plotOutput()
    # DT data table that arranges from top to bottom selected nutrients
     
    ),
  
  tabItem(
    tabName = "dictionary",
  
    
    # List of nutrients and their descriptions
    HTML(
      "All figures are per 100 grams"
      
    ),
    
    
    
    ),
  
  tabItem(
    tabName = "about"
    
    
    # reason for creating
    # libraries, tech used
    # link to usda data
    # Created by me on date
    
    
    
    
    )
))

ui <- dashboardPage(
  skin = "purple",
  header = header,
  sidebar = sidebar,
  body = body
)

shinyApp(ui, server)