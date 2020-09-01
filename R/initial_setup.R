

# Code that can be run to intially set up a student's R installation.
#  Here we are installing LaTeX through the tidytex package
initial_setup <- function() {

  update_installed_packages()
  tinytex::install_tinytex()

}







