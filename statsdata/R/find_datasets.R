#' Find datasets matching teaching criteria
#'
#' @param method Statistical method to filter by (e.g. "logistic_regression")
#' @param concept Teaching concept to filter by (e.g. "confounding")
#' @param course_level Course level to filter by (e.g. "introductory")
#' @param discipline Discipline to filter by (e.g. "health")
#'
#' @return A data frame of matching datasets
#' @export
find_datasets <- function(method = NULL, concept = NULL,
                          course_level = NULL, discipline = NULL) {

  metadata_dir <- system.file("extdata", "datasets", package = "statsdata")
  files <- list.files(metadata_dir, pattern = "\\.yaml$", full.names = TRUE)

  all_rows <- lapply(files, function(f) {
    d <- yaml::read_yaml(f)
    data.frame(
      id = d$id,
      title = d$title,
      methods = paste(d$methods, collapse = ";"),
      concepts = paste(d$concepts, collapse = ";"),
      course_level = paste(d$course_level, collapse = ";"),
      discipline = paste(d$discipline, collapse = ";"),
      stringsAsFactors = FALSE
    )
  })

  result <- do.call(rbind, all_rows)

  if (!is.null(method)) {
    result <- result[grepl(method, result$methods), ]
  }
  if (!is.null(concept)) {
    result <- result[grepl(concept, result$concepts), ]
  }
  if (!is.null(course_level)) {
    result <- result[grepl(course_level, result$course_level), ]
  }
  if (!is.null(discipline)) {
    result <- result[grepl(discipline, result$discipline), ]
  }

  result
}
