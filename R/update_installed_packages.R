
#' Installs packages that are used in the class
#'
#' This function installs packages that are used in the class based on a list
#' of packages described in a file on the class GitHub repository.
#'
#' @param force_reinstall If this is set to TRUE, then any class packages that
#' have already been installed will be reinstalled. If this is FALSE, then only
#' packages that have not been installed yet will be installed.
#'
#' @examples
#'  # Intall all the needed class packages
#'  \dontrun{update_installed_packages()}
#'
#' @export
update_installed_packages <- function(force_reinstall = FALSE) {

  required_packages <- utils::read.csv(paste0(get_base_url(), "required_packages.txt"),
                                header = FALSE)$V1

  packages_already_installed <- utils::installed.packages()[, 1]

  # force reinstall all the required packages
  if (force_reinstall) {

    utils::install.packages(required_packages)

  } else {

    # only install the packages that have not yet been installed

    for (currPackage in required_packages) {
      if (!(currPackage %in% packages_already_installed)) {
        utils::install.packages(currPackage, repos = "http://cran.us.r-project.org")
      }
    }

  }


}



