shinyServer(function(input, output) {
  output$top_state <- renderText({
    retirement |>
      slice_min(score) |>
      pull(state)
  })
})
