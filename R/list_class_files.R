
#' @import httr


# A helper function that does all the hard work of going ot the repository
#  and listing the files in the specified directory

list_class_files <- function(file_dir_name) {

  possible_file_dir_names <- c("homework", "class_code", "data", "images")

  if (!(file_dir_name %in% possible_file_dir_names))
    stop(paste0("The argument 'file_dir_name' was set to '", file_dir_name, "'.",
                " This argument must be set to one of the following: '",
                paste(possible_file_dir_names,collapse="', '"), "'."))

  file_url <- paste0("https://api.github.com/repos/", get_github_user_name(), "/",
                     get_package_name(), "/git/trees/master?recursive=1")

  req <- httr::GET(file_url)
  stop_for_status(req)


  filelist <- unlist(lapply(httr::content(req)$tree, "[", "path"), use.names = F)
  file_names <- grep(paste0("ClassMaterial/", file_dir_name, "/"),
              filelist, value = TRUE, fixed = TRUE)

  basename(file_names)

}




# checks if a given file exists in the file_dir_name on the class
# github page.

check_github_file_exists <- function(file_dir_name, file_name) {

  file_names <- list_class_files(file_dir_name)

  if (!(file_name %in% file_names)) {
    stop(paste("The file",  file_name,
               "does not exit in the class GitHub repository."))
  }

}








# not really needed

# list_class_homework <- function() {
#   list_class_files("homework")
# }
#
# list_class_code <- function() {
#   list_class_files("class_code")
# }
#
# list_class_data <- function() {
#   list_class_files("data")
# }
#
# list_class_images <- function() {
#   list_class_files("images")
# }


