

# gives a sequence of num_flip coin flips

rflip_sequence <- function(num_flips = 1, prob = .5, output_type = "name"){

  # do some sanity checking of the arguments
  if (num_flips < 1) {
    stop("The number of coin flips (num_flips) must be at least one")
  }


  if ((prob < 0) || (prob > 1)) {
    stop("The probability of getting heads (prob) must be between 0 and 1")
  }


  if (output_type == "name"){

      outcome_names <- c("T", "H")

  } else if ((output_type == "long name") || (output_type == "long_name")) {

      outcome_names <- c("Tails", "Heads")

  } else if (output_type == "numeric"){

      outcome_names <- c(0, 1)

  } else {

    stop("outcome_names must be set to either 'name', 'long_name', or 'numeric'")

  }


  flip_sequence <- outcome_names[rbinom(num_flips, 1, prob) + 1]


  flip_sequence

}






# gives a count/proportion of the number of heads out of num_flips coin flips

rflip_count <- function(num_flips = 1, prob = .5, report_proportion = FALSE){

  # do some sanity checking of the arguments
  if (num_flips < 1) {
    stop("The number of coin flips (num_flips) must be at least one")
  }


  if ((prob < 0) || (prob > 1)) {
    stop("The probability of getting heads (prob) must be between 0 and 1")
  }


  head_amount <- rbinom(1, num_flips, prob)

  if (report_proportion == TRUE) {

    head_amount <- head_amount/num_flips
  }


  head_amount

}






