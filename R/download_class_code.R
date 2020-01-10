

# A function to download the code for each class
download_class_code <- function(class_number){

  base_path <- paste0(get_base_url(), "class_code/")

  result = tryCatch({

    file_name <- paste0("class_", sprintf("%02d", class_number), ".Rmd")
    full_path <- paste0(base_path, file_name)

  },  warning = function(w) {

    file.remove(file_name)
    file_name <- paste0("class_", sprintf("%02d", class_number), ".R")
    full_path <- paste0(base_path, file_name)

  }, finally = {
  })


  if (file.exists(file_name)){
    stop(paste("The class code file you are trying to download", file_name,
               "already exists. Please rename the file", file_name,
               "and then rerun this function to download a new copy"))
  }

  download.file(full_path, file_name)

}
