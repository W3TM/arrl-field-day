save_fd_data <- function(df,
                         year,
                         data_dir = "data/raw",
                         force_create_dir = TRUE) {
  assertthat::assert_that(tibble::is_tibble(df))
  
  assertthat::is.number(year)
  assertthat::assert_that(year > 0)
  
  assertthat::is.string(data_dir)
  assertthat::assert_that(is.logical(force_create_dir))
  if (!assertthat::is.writeable(data_dir)) {
    if (force_create_dir) {
      dir.create(data_dir)
    } else {
      warning(paste0(data_dir, " does not exist. Exiting."))
      return()
    }
  }
  
  fn <- file.path(data_dir, paste0("field-day-", year, ".csv"))
  readr::write_csv(df, fn)
  fn
} 