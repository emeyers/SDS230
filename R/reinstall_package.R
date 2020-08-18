

#' Reinstalls the class package
#'
#' This function reinstalls the class package. It is useful in case the package
#' has been updated in the middle of the semester.
#'
#' @examples
#'  # Reinstall the package
#'  reinstall_package()
#'
#' @export
reinstall_package <- function() {

  user_package_name <- paste0(get_user_name(), "/", get_package_name())

  devtools::install_github(user_package_name, force = TRUE)

  # unload the old version of the package
  detach(paste0("package:", get_package_name()), unload = TRUE)

  # load the new version of the package
  library(get_package_name())

}



