library(yaml)
library(jsonlite)

metadata_dir <- "metadata/datasets"
output_path <- "website/statsdata-hub-site/datasets.json"

files <- list.files(metadata_dir, pattern = "\\.yaml$", full.names = TRUE)

all_datasets <- lapply(files, function(f) {
  d <- read_yaml(f)
  list(
    id = unbox(d$id),
    title = unbox(d$title),
    description = unbox(d$description),
    methods = d$methods,
    concepts = d$concepts,
    variable_types = d$variable_types,
    course_level = d$course_level,
    discipline = d$discipline,
    n_obs = unbox(d$characteristics$n_obs),
    n_vars = unbox(d$characteristics$n_vars)
  )
})

write_json(all_datasets, output_path, auto_unbox = FALSE, pretty = TRUE)
cat("Wrote", length(all_datasets), "datasets to", output_path, "\n")