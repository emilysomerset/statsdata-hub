library(yaml)

metadata_dir <- "metadata/datasets"
output_file <- "statsdata/R/data-documentation.R"

files <- list.files(metadata_dir, pattern = "\\.yaml$", full.names = TRUE)

blocks <- lapply(files, function(f) {
  d <- read_yaml(f)
  
  var_lines <- sapply(d$variables, function(v) {
    desc_escaped <- gsub("\\[", "\\\\[", v$description)
    desc_escaped <- gsub("\\]", "\\\\]", desc_escaped)
    paste0("#'   \\item{", v$name, "}{", v$type, ". ", desc_escaped, "}")
  })
  
  c(
    paste0("#' ", d$title),
    "#'",
    paste0("#' ", gsub("\n", " ", d$description)),
    "#'",
    "#' @format A data frame with variables:",
    "#' \\describe{",
    var_lines,
    "#' }",
    paste0("#' @source ", d$source$citation),
    paste0("#' @name ", d$id),
    "NULL",
    ""
  )
})

writeLines(unlist(blocks), output_file)
cat("Wrote documentation for", length(files), "datasets to", output_file, "\n")