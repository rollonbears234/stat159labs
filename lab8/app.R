
# 01-kmeans-app -> Histogram app
library(shiny)

palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
  "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))


ui <- fluidPage(
  headerPanel('Histogram of Advertising Data'),
  sidebarPanel(
    selectInput(inputId = "Media", label = "Choose a Media Outlet",
    choices = list("Newspaper","Radio", "TV")
    ),
  mainPanel(
    plotOutput('scat')
    )
  )
)

server <- function(input, output) {

  adData = read.csv(file = "Advertising.csv")
  

  output$scat <- renderPlot({
    plot(adData[,input$Media], adData$Sales)
  })

}

shinyApp(ui = ui, server = server)


#
# ui <- fluidPage(
#   sliderInput(inputId = "num",
#     label = "Choose a number",
#     value = 25, min = 1, max = 100),
#   plotOutput("hist")
# )
#
# server <- function(input, output) {
#   output$hist <- renderPlot({
#     hist(rnorm(input$num))
#   })
# }
#
# shinyApp(ui = ui, server = server)
