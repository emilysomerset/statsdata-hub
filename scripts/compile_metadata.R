# Combine all dataset YAML files into one big table
compile_metadata <- function(metadata_dir = "../metadata/datasets") {
  files <- list.files(metadata_dir, pattern = "\\.yaml$", full.names = TRUE)

  all_rows <- lapply(files, function(f) {
    d <- yaml::read_yaml(f)
    data.frame(
      id = d$id,
      title = d$title,
      description = d$description,
      methods = paste(d$methods, collapse = ";"),
      concepts = paste(d$concepts, collapse = ";"),
      variable_types = paste(d$variable_types, collapse = ";"),
      course_level = paste(d$course_level, collapse = ";"),
      discipline = paste(d$discipline, collapse = ";"),
      n_obs = d$characteristics$n_obs,
      n_vars = d$characteristics$n_vars,
      stringsAsFactors = FALSE
    )
  })

  do.call(rbind, all_rows)
}

# Try it out
result <- compile_metadata()
print(result)
