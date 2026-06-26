#' Load a dataset by its ID
#'
#' @param id The dataset's ID, e.g. "titanic-survival"
#'
#' @return A data frame containing the dataset
#' @export
load_dataset <- function(id) {

  metadata_dir <- system.file("extdata", "datasets", package = "statsdata")
  yaml_path <- file.path(metadata_dir, paste0(id, ".yaml"))

  if (!file.exists(yaml_path)) {
    stop("No dataset found with id: ", id)
  }

  info <- yaml::read_yaml(yaml_path)

  # The 'file' field in the YAML is relative to the project root,
  # but inside the installed package we store data files under inst/extdata/data/
  data_path <- system.file("extdata", "data", paste0(id, ".csv"), package = "statsdata")

  if (!file.exists(data_path)) {
    stop("Data file not found for dataset: ", id,
         "\nExpected at: ", data_path)
  }

  read.csv(data_path, stringsAsFactors = FALSE)
}
