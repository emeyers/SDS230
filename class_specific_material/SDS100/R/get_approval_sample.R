


# a function that returns a vector of a sample of Trump's approval ratings

get_approval_sample <- function(n, degree_of_approval = FALSE) {


  if (degree_of_approval == FALSE){

    approval_categories <- ordered(c("disapprove",  "approve"), levels = c("disapprove",  "approve"))
    the_proportions <- c(0.57,   0.43)

  } else {

    level_names <- c("strongly disapprove", "disapprove",  "approve", "strongly approve")
    approval_categories <- ordered(level_names, levels = level_names)
    the_proportions <- c(0.43,   0.14,   0.09,   0.34)

  }

  sample(approval_categories, n, replace = TRUE, prob = the_proportions)

}

