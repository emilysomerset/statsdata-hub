# rebuild.R
# Run this script whenever you add or update a dataset.
# It handles everything: JSON, website pages, site build, package update.

cat("=== StatsData Hub: Full Rebuild ===\n\n")

# --- Step 1: Compile metadata to JSON ---
cat("Step 1: Compiling metadata to JSON...\n")
source("scripts/compile_metadata_json.R")
cat("Done.\n\n")

# --- Step 2: Generate dataset pages ---
cat("Step 2: Generating dataset pages...\n")
source("scripts/generate_dataset_pages.R")
cat("Done.\n\n")

# --- Step 2b: Generate R documentation for datasets ---
cat("Step 2b: Generating R help pages for datasets...\n")
source("scripts/generate_dataset_docs.R")
cat("Done.\n\n")

# --- Step 3: Copy all YAMLs into package ---
cat("Step 3: Copying metadata into R package...\n")
yaml_files <- list.files(
  "metadata/datasets",
  pattern = "\\.yaml$",
  full.names = TRUE
)
file.copy(
  yaml_files,
  "statsdata/inst/extdata/datasets/",
  overwrite = TRUE
)
cat("Copied", length(yaml_files), "YAML files.\n\n")

# --- Step 4: Copy all clean CSVs into package ---
cat("Step 4: Copying clean data files into R package...\n")
csv_files <- list.files(
  "statsdata/inst/extdata/datasets",
  pattern = "\\.yaml$",
  full.names = TRUE
)

# Match each YAML to its clean CSV by dataset ID
yaml_ids <- gsub("\\.yaml$", "", basename(yaml_files))
copied <- 0
for (id in yaml_ids) {
  # Search for the CSV anywhere under data/clean/
  matches <- list.files(
    "data/clean",
    pattern = paste0("^", id, "\\.csv$"),
    recursive = TRUE,
    full.names = TRUE
  )
  if (length(matches) > 0) {
    file.copy(
      matches[1],
      paste0("statsdata/inst/extdata/data/", id, ".csv"),
      overwrite = TRUE
    )
    copied <- copied + 1
  } else {
    cat("  WARNING: No clean CSV found for", id, "\n")
  }
}
cat("Copied", copied, "CSV files.\n\n")

# --- Step 5: Rebuild Quarto site ---
cat("Step 5: Rendering website...\n")
quarto::quarto_render("website/statsdata-hub-site", as_job = FALSE)
cat("Done.\n\n")

cat("=== Rebuild complete! ===\n")
cat("Next: reinstall the R package from Terminal with:\n")
cat("  cd /Users/emilysomerset/statsdata-hub/statsdata && R CMD INSTALL .\n\n")
cat("Then commit and push in GitHub Desktop.\n")