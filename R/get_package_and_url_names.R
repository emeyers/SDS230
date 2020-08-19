

# should set this to the name of the package
package_name <- "ClassTools"

# should set this to the github user name
github_user_name <- "emeyers"



#' Get the package name and version number
#'
#' Returns the name of the package and the version number. This is useful to
#' check that one is using the most recent version of the package in case the
#' package is updated in the middle of the semester.
#'
#' @examples
#'  # Download the first homework file
#'  get_version()
#'
#' @export
get_version <- function() {
  paste0(get_package_name(), ": version ", utils::packageVersion(get_package_name()))
}





### Helper functions used throughout the package ---------------------------


get_package_name <- function() {
  package_name
}


get_github_user_name <- function() {
  github_user_name
}


get_base_url <- function() {
  base_path <- paste0("https://raw.githubusercontent.com/",
                      github_user_name, "/", package_name, "/master/ClassMaterial/")
}


