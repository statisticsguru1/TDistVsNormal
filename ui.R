library(shiny)
library(ggplot2)
library(plotly)
library(bslib)
library(bsicons)

# Define UI for the app
ui <- fluidPage(
  theme = bslib::bs_theme(),
  tags$head(
    tags$style(HTML("
      .bg-warning1 {
        background-color: white !important; /* White background color */
        border-color: #ffc107 !important; /* Bootstrap warning color for the border */
      }
      
      .popover {
        max-width: 500px; /* Maximum width of the popover */
        width: 500px; /* Fixed width of the popover */
      }
    "))
  ),
  card(
    full_screen = TRUE,
    card_header("Comparison of the t-Distribution and the Normal Distribution",# class = "bg-warning",
                popover(
                  bsicons::bs_icon("gear", class = "ms-auto"),
                  sliderInput("alpha", "Alpha Level:", min = 0.1, max = 1, value = 0.1, step = 0.1, width = "98%"),
                  title = "Plot settings"
                ),
                class = "d-flex align-items-center gap-1"
    ),
    card_body(
      card(fill=T,
           sliderInput("df", "Degrees of Freedom:", min = 1, max = 30, value = 5, width = "98%"),
           ,class="bg-warning"),
      plotlyOutput("distPlot"),
      padding = 10,
      gap = 0
    ),
    class = "bg-warning1",
    card_footer(
      popover(
        a("Learn more", href = "#"),
        markdown(
          "
          ### t-Distribution and Normal Distribution
          By playing around with the df slider above, it can be noticed that the t-distribution approaches the normal distribution as the degrees of freedom (df) increase. By the time df = 30, the t-distribution is almost identical to the normal distribution.
        "
        )
      )
    )
  ),
  
)