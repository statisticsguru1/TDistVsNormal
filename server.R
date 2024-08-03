# Define server logic for the app
server <- function(input, output) {
  output$distPlot <- renderPlotly({
    df <- input$df
    alpha <- input$alpha
    x <- seq(-4, 4, length.out = 1000)
    
    y_norm <- dnorm(x)
    y_t <- dt(x, df)
    
    data <- data.frame(
      x = rep(x, 2),
      y = c(y_norm, y_t),
      Distribution = factor(rep(c("Normal", paste("t (df =", df, ")")), each = length(x)))
    )
    
    p <- ggplot(data, aes(x = x, y = y, color = Distribution)) +
      geom_line(size = 1) +
      geom_area(aes(fill = Distribution), alpha = alpha, position = 'identity') +
      theme_minimal() +
      labs(x = "Value",
           y = "Probability Density") +
      scale_color_manual(values = c("Normal" = "orange",sprintf("t(df = '%s') = 'darkorange'",df))) +
      scale_fill_manual(values = c("Normal" = "orange",sprintf("t(df = '%s') = 'darkorange'",df)))+
      theme(legend.position = "bottom")
    
    ggplotly(p)
  })
}

