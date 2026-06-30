# StatsData Hub

An open-source repository of datasets curated specifically for **teaching statistics**.

Most dataset repositories are built for *finding* data. StatsData Hub is built for *teaching* with data — helping instructors, TAs, and students find datasets aligned with specific statistical methods, teaching concepts, and course levels.

## 🌐 Website

Browse and filter the full dataset collection at:
**[emilysomerset.github.io/statsdata-hub](https://emilysomerset.github.io/statsdata-hub/)**

## 📦 R Package

Install the companion R package to search and load datasets directly in R:

```r
install.packages("devtools")
devtools::install_github("emilysomerset/statsdata-hub/statsdata")
```

```r
library(statsdata)

# Browse all datasets
find_datasets()

# Search by teaching criteria
find_datasets(method = "logistic_regression")
find_datasets(concept = "confounding", course_level = "introductory")

# Load a dataset
titanic <- load_dataset("titanic-survival")
```

## 🗂️ Current Datasets

| Dataset | Methods | Level | Source |
|---------|---------|-------|--------|
| [Titanic Passenger Survival](https://emilysomerset.github.io/statsdata-hub/datasets/titanic-survival.html) | Logistic regression | Introductory | Classic |
| [Epilepsy Seizure Counts](https://emilysomerset.github.io/statsdata-hub/datasets/epilepsy-seizures.html) | Poisson regression | Intermediate | Public repository |
| [Social Pressure to be Busy and Emotional Wellbeing](https://emilysomerset.github.io/statsdata-hub/datasets/busy-wellbeing.html) | Multilevel modelling | Graduate | Published study |
| [Everyday Discrimination and Cognitive Failures](https://emilysomerset.github.io/statsdata-hub/datasets/discrimination-cognitive.html) | Multilevel modelling | Graduate | Published study |
| [Friends with Health Benefits (Gym Incentives)](https://emilysomerset.github.io/statsdata-hub/datasets/gym-incentives.html) | t-test, ANOVA, time series | Intermediate / Adv. UG | Published study |
| [Plant-Based vs. Meat-Based Yelp Reviews](https://emilysomerset.github.io/statsdata-hub/datasets/plantbased-meat-reviews.html) | Mixed-effects models | Advanced UG / Graduate | Published study |

## 🤝 Contributing

Contributions of new datasets are welcome. See the [Contribute page](https://emilysomerset.github.io/statsdata-hub/contribute.html) for a step-by-step guide, or open an issue to discuss a dataset you'd like to add.

Each dataset needs:
1. A cleaned CSV file in `data/clean/<dataset-id>/`
2. A metadata YAML file in `metadata/datasets/`

## 📁 Repository Structure

- `metadata/datasets/` — one YAML file per dataset (the single source of truth)
- `data/raw/` — original unmodified data files
- `data/clean/` — cleaned data files used by the package and website
- `statsdata/` — R package source code
- `website/` — Quarto website source
- `docs/` — built website (served by GitHub Pages)
- `scripts/` — helper scripts (compile JSON, generate pages, rebuild)
- `rebuild.R` — run this after adding or updating any dataset
