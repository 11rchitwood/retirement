shinyUI(
  fluidPage(

    titlePanel("The Best and Worst States for Retirement"),

    sidebarLayout(
      sidebarPanel(
        numericInput(
          "affordability",
          "Affordability",
          min = 0,
          max = 100,
          step = 1,
          value = 40
        )
      ),

      mainPanel(
        textOutput("top_state")
      )
    )
  )
)
