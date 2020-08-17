

# should set this to the name of the package
package_name <- "ClassTools"

# should set this to the github user name
github_user_name <- "emeyers"



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






