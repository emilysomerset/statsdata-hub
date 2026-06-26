#' Search datasets by statistical method
#'
#' @param method Statistical method (e.g. "logistic_regression", "anova")
#' @return A data frame of matching datasets
#' @export
search_by_method <- function(method) {
  find_datasets(method = method)
}

#' Search datasets by teaching concept
#'
#' @param concept Teaching concept (e.g. "confounding", "missing_data")
#' @return A data frame of matching datasets
#' @export
search_by_concept <- function(concept) {
  find_datasets(concept = concept)
}

#' Search datasets by variable type
#'
#' @param variable_type Variable type (e.g. "continuous", "binary", "count")
#' @return A data frame of matching datasets
#' @export
search_by_variable <- function(variable_type) {

  metadata_dir <- system.file("extdata", "datasets", package = "statsdata")
  files <- list.files(metadata_dir, pattern = "\\.yaml$", full.names = TRUE)

  all_rows <- lapply(files, function(f) {
    d <- yaml::read_yaml(f)
    data.frame(
      id = d$id,
      title = d$title,
      variable_types = paste(d$variable_types, collapse = ";"),
      stringsAsFactors = FALSE
    )
  })

  result <- do.call(rbind, all_rows)
  result[grepl(variable_type, result$variable_types), ]
}
