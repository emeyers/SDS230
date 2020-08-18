

test_that("can download an image", {

  download_image_name <- "valentin.png"
  download_image(download_image_name)

  expect_true(file.exists(download_image_name))

  file.remove(download_image_name)   # clean up

})



test_that("can download data", {

  download_data_name <- "test_data.rda"
  download_data(download_data_name)

  expect_true(file.exists(download_data_name))

  file.remove(download_data_name)   # clean up

})





test_that("can download homework", {

  download_homework(-1)
  expected_file_name <- "homework_-1.Rmd"

  expect_true(file.exists(expected_file_name))

  file.remove(expected_file_name)   # clean up

})





test_that("can download class code", {

  download_class_code(-1)
  expected_file_name <- "class_-1.Rmd"

  expect_true(file.exists(expected_file_name))

  file.remove(expected_file_name)   # clean up

})



