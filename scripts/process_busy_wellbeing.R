##########################################################################
##                                                                      ##
##          SOCIAL PRESSURE TO BE BUSY AND EMOTIONAL WELLBEING          ##
##                                                                      ##
##########################################################################

########## SET UP ########################################################

# load packages - convenience
library(dplyr)
library(openxlsx)

########## IMPORT AND CLEAN DATA #########################################

busy_wellbeing =
  # import partially processed data (matches data on Researchbox)
  read.csv("./data/raw/busy_wellbeing/Busy Emotional Wellbeing Data.csv") %>%
  # conduct group mean centring
  rockchalk::gmc(c("modifiedBusy", "fouritemBusy"), by = "participantID") %>%
  # reverse one daily busyness item
  dplyr::mutate(
    SEDAS_B_3_REVERSED = 8 - SEDAS_B_3,
    SEDAS_B_3 = NULL
  ) %>%
  # rearrange and rename columns for neatness
  dplyr::select(
    participantID,
    starts_with("demog"), starts_with("ses"), starts_with("b5"),
    starts_with("emo"),
    day,
    starts_with("modifiedBusy"),
    starts_with("fouritemBusy"),
    dayPA = daySwbPAccplexOverall,
    dayNA = daySwbNAccplexOverall,
    dayAnx = dayAnxiety5,
    dayDep = dayDepressive,
    everything()
  ) %>%
  dplyr::rename(demogRace = demogEthnicityMinority)

write.csv(busy_wellbeing, "data/clean/busy_wellbeing/busy-wellbeing.csv", row.names = FALSE)
