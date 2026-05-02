clean_fd_names_save <- function(fn, clean_file_dir = "data/cleaned") {
  assertthat::is.string(fn)
  assertthat::is.readable(fn)
  
  df <- readr::read_csv(fn, show_col_types = FALSE)
  assertthat::assert_that(tibble::is_tibble(df))
  
  # Clean names
  df_clean <- janitor::clean_names(df)

  fn_no_ext <- basename(tools::file_path_sans_ext(fn))
  fn <- file.path(clean_file_dir, paste0(fn_no_ext, "-clean-names.csv"))
  readr::write_csv(df_clean, fn)
  fn
}