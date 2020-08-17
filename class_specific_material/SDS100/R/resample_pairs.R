

# a function that samples with replacement the same rows from two vectors

resample_pairs <- function(vector1, vector2) {

  if (length(vector1) != length(vector2)){
    stop('The two input vectors must be the same length')
  }

  n <- length(vector1)

  inds_to_use <- sample(1:n, replace = TRUE)

  output <- data.frame(inds_to_use, vector1[inds_to_use], vector2[inds_to_use])
  names(output) <- c("original_sample_num", "vector1", "vector2")

  output

}





