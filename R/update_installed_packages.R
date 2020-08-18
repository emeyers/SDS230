

# Installs packages based on a list of packages in the file
# ClassMaterial/required_packages.txt

update_installed_packages <- function(force_reinstall = FALSE) {

  required_packages <- read.csv(paste0(get_base_url(), "required_packages.txt"),
                                header = FALSE)$V1

  packages_already_installed <- installed.packages()[, 1]

  # force reinstall all the required packages
  if (force_reinstall) {

    install.packages(required_packages)

  } else {

    # only install the packages that have not yet been installed

    for (currPackage in required_packages) {
      if (!(currPackage %in% packages_already_installed)) {
        install.packages(currPackage)
      }
    }

  }


}





