library(yaml)

metadata_dir <- "metadata/datasets"
output_dir <- "website/statsdata-hub-site/datasets"

dir.create(output_dir, showWarnings = FALSE, recursive = TRUE)

files <- list.files(metadata_dir, pattern = "\\.yaml$", full.names = TRUE)

for (f in files) {
  d <- read_yaml(f)
  
  page <- c(
    "---",
    paste0('title: "', d$title, '"'),
    "---",
    "",
    d$description,
    "",
    "## Source and Citation",
    "",
    paste0("- **Citation**: ", d$source$citation),
    paste0("- **URL**: [", d$source$url, "](", d$source$url, ")"),
    paste0("- **License**: ", d$source$license),
    "",
    "## Dataset Characteristics",
    "",
    paste0("- **Observations**: ", d$characteristics$n_obs),
    paste0("- **Variables**: ", d$characteristics$n_vars),
    paste0("- **Missingness present**: ", d$characteristics$missingness),
    paste0("- **Longitudinal**: ", d$characteristics$longitudinal),
    paste0("- **Hierarchical**: ", d$characteristics$hierarchical),
    "",
    "## Variable Dictionary",
    "",
    "| Variable | Type | Description |",
    "|----------|------|-------------|",
    sapply(d$variables, function(v) {
      paste0("| ", v$name, " | ", v$type, " | ", v$description, " |")
    }),
    "",
    "## Suggested Learning Objectives",
    "",
    paste0("- ", d$teaching$learning_objectives),
    "",
    "## Suggested Classroom Activities",
    "",
    paste0("- ", d$teaching$classroom_activities),
    "",
    "## Common Student Misconceptions",
    "",
    paste0("- ", d$teaching$common_misconceptions),
    "",
    "## Load This Dataset in R",
    "",
    "```r",
    "library(statsdata)",
    paste0('data <- load_dataset("', d$id, '")'),
    "```"
  )
  
  out_file <- file.path(output_dir, paste0(d$id, ".qmd"))
  writeLines(page, out_file)
  cat("Wrote", out_file, "\n")
}

