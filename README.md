# TDistVsNormal

This Shiny application provides a comprehensive tool for exploring the properties of the t-distribution. It allows users to experiment with the t-distribution and understand how it compares to the normal distribution. The application demonstrates how the t-distribution has heavier tails compared to the normal distribution for small sample sizes (degrees of freedom, df), and how it converges to the normal distribution as the sample size increases (df approaches 30).

## Features

- **Calculate Area Under the Curve**: Determine the cumulative probability for a given t-score and degrees of freedom.
- **Find Critical Values**: Compute critical values for the t-distribution given a significance level and degrees of freedom.
- **Compare t-Distribution and Normal Distribution**: Visualize the difference between the t-distribution and the normal distribution for degrees of freedom between 1 and 30.
- **Convergence Demonstration**: Show how the t-distribution converges to the normal distribution as the degrees of freedom increase to 30.
- **Understand Tail Heaviness**: Explore how the t-distribution's heavier tails affect the calculation of probabilities and critical values for small sample sizes.

## Usage

### Running the Application

To run the Shiny app locally, ensure you have R and the necessary packages installed. Then, use the following commands:

```r
if (!require("pacman")) install.packages("pacman")
pacman::p_load("shiny", "tidyverse", "plotly", "bslib", "bsicons")
runGitHub(
  'TDistVsNormal',
  username = 'statisticsguru1',
  ref = "main"
)
```

# Educational Insights
Why Use t-Test for Small Samples: The t-distribution is preferred for small sample sizes because it accounts for the additional variability introduced by estimating the population variance from the sample.
When to Use z-Test and t-Test: For large sample sizes (greater than 30), the t-distribution converges to the normal distribution, making the z-test and t-test effectively interchangeable.

# Contributing
Contributions are welcome! Please fork this repository and submit a pull request for any enhancements or bug fixes.

# License
This project is licensed under the MIT License - see the LICENSE file for details.

# Contact
For any questions or suggestions, please open an issue or contact [Festus Nzuma](https://github.com/statisticsguru1)

