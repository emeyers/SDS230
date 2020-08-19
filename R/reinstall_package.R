

#' Reinstalls the class package
#'
#' This function reinstalls the class package. It is useful in case the package
#' has been updated in the middle of the semester.
#'
#' @examples
#'  # Reinstall the package
#'  \dontrun{reinstall_package()}
#'
#' @export
reinstall_package <- function() {

  message(paste("Old version: ", get_version()))

  package_name <- get_package_name()
  user_name <- get_github_user_name()

  user_package_name <- paste0(user_name, "/", package_name)

  devtools::install_github(user_package_name, force = TRUE)

  # unload the old version of the package
  detach(paste0("package:", package_name), unload = TRUE, character.only = TRUE)

  # load the new version of the package
  eval(parse(text=paste0("library(", package_name, ")")))

  message(paste("New version: ", get_version()))

}



