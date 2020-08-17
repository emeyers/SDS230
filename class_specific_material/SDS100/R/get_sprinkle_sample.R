


# a function that returns a vector of sprinkle colors

get_sprinkle_sample <- function(n) {

  the_colors <- as.factor(c("green", "orange",  "pink",   "red",   "white",  "yellow"))
  the_proportions <- c(0.15,   0.16,   0.12,   0.155,   0.30,   0.115)

  sample(the_colors, n, replace = TRUE, prob = the_proportions)

}

