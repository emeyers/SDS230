
# downloads data for the class from github
download_data <- function(file_name) {


  base_path <- paste0(get_base_url(), "data/")

  full_path <- paste0(base_path, file_name)

  if (file.exists(file_name)){
    stop(paste("The data file you are trying to download", file_name,
               "already exists. Please rename the file", file_name,
               "and then rerun this function to download a new copy"))
  }


  download.file(full_path, file_name)

}
