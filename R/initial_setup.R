

# Code that can be run to initially set up a student's R installation.
#  Here we are installing LaTeX through the tidytex package
initial_setup <- function() {

  update_installed_packages()

  # removing this so students working on the Grace cluster do no install tinytex
  # tinytex::install_tinytex()

}







