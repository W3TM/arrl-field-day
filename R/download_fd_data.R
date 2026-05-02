#' download_fd_data
#' 
#' Downloads CSV data about Field Day results
#' 
download_fd_data <- function(year = 2025) {
  assertthat::is.number(year)
  assertthat::assert_that(year > 0)
  
  url <- paste0("https://contests.arrl.org/ContestResults/", year, "/field-day-", year, ".csv")
  readr::read_csv(url, show_col_types = FALSE)
}