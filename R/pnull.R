


pnull <- function(obs_stat, null_dist, lower.tail = TRUE){


  if (lower.tail == TRUE){

      p_val <- sum(null_dist <= obs_stat)/length(null_dist)

  } else {

    # doing >=  rather than > here (unlike R's pnorm, etc. functions) since this will be used
    #  for computing p-values and I want Pr(X >= obs_stat) the right tail as well
    p_val <-sum(null_dist >= obs_stat)/length(null_dist)

  }

  p_val

}





