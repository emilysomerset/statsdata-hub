######################### DISCRIMINATION & COGNITIVE FAILURES v2 #########################

######################### SET UP #########################


# load packages - convenience
library(dplyr)      # version 1.0.10
library(openxlsx)   # version 4.1.5

# custom functions
centre = function(x) x %>% scale(center = TRUE, scale = FALSE) %>% as.numeric()
binary_to_factor = function(x) ifelse(x == 0, "NO", "YES") %>% as.factor()
distinct_keep_all = function(x) x %>% dplyr::distinct(participantID, .keep_all = TRUE)
mergeSpecial2 = function(a, b) merge(a, b, by = "variable", all = TRUE, sort = FALSE)
mergeSpecial3 = function(a, b, c) a %>% mergeSpecial2(b) %>% mergeSpecial2(c)

######################### IMPORT AND CLEAN DATA #########################

dd23 = read.csv("./data/raw/discrimination_cognitive_failures/data_dd23.csv") %>%
  # score discrimination, daily cog fail, daily stressor exposure (without disc item)
  dplyr::mutate(
    discrimination = rowMeans(across(starts_with("itemDisc")), na.rm = TRUE),
    dayCogFail = rowMeans(across(starts_with("itemDayCogFail")), na.rm = TRUE),
    dayStressorExp = rowSums(across(starts_with("itemDayStressor") & !contains("discrim")), na.rm = TRUE),
    dayStressorExp = ifelse(dayStressorExp > 0, 1, 0)) %>%
  dplyr::group_by(participantID) %>%
  dplyr::mutate(
    dayCogFail.m = mean(dayCogFail, na.rm = TRUE),
    dayStressorExp.m = mean(dayStressorExp, na.rm = TRUE)) %>%
  dplyr::ungroup() %>%
  # keep only days with cog fail data
  dplyr::filter(!is.na(dayCogFail)) %>%
  # rescale age to prevent convergence failures due to scale
  # centre all continuous covariates to prevent convergence failures
  # change binary predictors to factors
  dplyr::mutate(
    age.c10 = (age / 10) %>% centre(),
    sesInc.c = sesInc %>% centre(),
    sesLad.c = sesLad %>% centre(),
    female.f = female %>% binary_to_factor(),
    nonChinese.f = nonChinese %>% binary_to_factor(),
    dayStressorExp.f = dayStressorExp %>% binary_to_factor())

write.csv(dd23, "data/clean/discrimination_cognitive_failures/dcf.csv", row.names = FALSE)

