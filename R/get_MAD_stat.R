

# a function to get the MAD statistic
get_MAD_stat <- function(data, grouping) {


  group_means <- as.vector(by(data, grouping, mean))

  total <- 0
  num_differences <- 0

  for (iGroup1 in 1:(length(group_means) - 1)) {
    for (iGroup2 in (iGroup1 + 1):(length(group_means))) {

      total <- total + abs(group_means[iGroup1] - group_means[iGroup2])
      num_differences <- num_differences + 1

    }
  }


  total/num_differences


} # end of the function
