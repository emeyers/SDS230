

reinstall_class_package <- function(){

  devtools::install_github("emeyers/ClassTools", force = TRUE)

  # unload the old version of the package
  detach("package:ClassTools", unload = TRUE)

  # load the new version of the package
  library(ClassTools)


}



