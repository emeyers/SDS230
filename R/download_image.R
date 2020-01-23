

# downloads data for the class from github
download_image <- function(file_name, force_download = FALSE){


  base_path <- paste0(get_base_url(), "images/")

  full_path <- paste0(base_path, file_name)


  # only download the image if it doesn't exist or if force_download is TRUE
  if (!file.exists(file_name) || force_download == TRUE) {
    download.file(full_path, file_name)
  }


}
