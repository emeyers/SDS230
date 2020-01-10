


# A function to download the homework
download_homework <- function(homework_number){

  base_path <- paste0(get_base_url(), "homework/")

  file_name <- paste0("homework_", sprintf("%02d", homework_number), ".Rmd")

  if (file.exists(file_name)){
    stop(paste("The homework file you are trying to download", file_name,
               "already exists. Please rename the file", file_name,
               "and then rerun this function to download a new copy"))
  }

  full_path <- paste0(base_path, file_name)
  download.file(full_path, file_name)

}



