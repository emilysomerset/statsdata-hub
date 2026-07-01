library(dplyr)
library(tidyr)
library(readxl)

d.CG.kid.raw <- read_excel("./data/raw/me_to_we/Exp 2.xlsx")

## Data Cleaning and Demographics 

# Participant Demographics on Included Sample

d.CG.kid.clean <- subset(d.CG.kid.raw, keep=="ok")



# Reorder factors
# Reorder factors

d.CG.kid.clean$race <- factor(d.CG.kid.clean$race, levels=c("White", "African American_Black", "Hispanic_Latinx", "Asian", "East Asian", "South Asian", "American Indian or Alaska Native", "Mixed", "Other", "NotAnswer"))
d.CG.kid.clean$gender <- factor(d.CG.kid.clean$gender, levels=c("F", "M"))

# Mean Center Age Variable, in anticipation of analyses with interaction terms

d.CG.kid.clean <- d.CG.kid.clean %>% mutate(age_c = age - mean(age, na.rm = TRUE))


#### Note, GenOrder = Subset Variable

# Creating data in long format
d.CG.kid.DV <- d.CG.kid.clean[,c("ID", "age", "age_c", "age_group", "Generic", "GenOrder", "Trial 1", "Trial 2", "Trial 3", "Trial 4", "Trial 5", "Trial 6", "Trial 7", "Trial 8", "Attribution", "gender")]


d.CG.kid.DV_long <- gather(d.CG.kid.DV, key = "Trial", value = "Answer", "Trial 1", "Trial 2", "Trial 3", "Trial 4", "Trial 5", "Trial 6", "Trial 7", "Trial 8")

# Copy Trial variable to new variable called Language

d.CG.kid.DV_long <- d.CG.kid.DV_long %>% mutate(Language = Trial)


# Recode Language variable to indicate condition (Generic or Specific) used in each trial.
# Set A: Trials 1-4 = generic pronoun; Trials 5-8 = specific pronoun 
# Set B: Trials 1-4 = specific pronoun; Trials 5-8 = generic pronoun 


for (i in 1:nrow(d.CG.kid.DV_long)) {
  if (d.CG.kid.DV_long$GenOrder[i] == "A" && d.CG.kid.DV_long$Trial[i] == "Trial 1"){
    d.CG.kid.DV_long$Language[i] <- "Generic"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "A" && d.CG.kid.DV_long$Trial[i] == "Trial 2"){
    d.CG.kid.DV_long$Language[i] <- "Generic"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "A" && d.CG.kid.DV_long$Trial[i] == "Trial 3"){
    d.CG.kid.DV_long$Language[i] <- "Generic"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "A" && d.CG.kid.DV_long$Trial[i] == "Trial 4"){
    d.CG.kid.DV_long$Language[i] <- "Generic"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "A" && d.CG.kid.DV_long$Trial[i] == "Trial 5"){
    d.CG.kid.DV_long$Language[i] <- "Specific"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "A" && d.CG.kid.DV_long$Trial[i] == "Trial 6"){
    d.CG.kid.DV_long$Language[i] <- "Specific"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "A" && d.CG.kid.DV_long$Trial[i] == "Trial 7"){
    d.CG.kid.DV_long$Language[i] <- "Specific"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "A" && d.CG.kid.DV_long$Trial[i] == "Trial 8"){
    d.CG.kid.DV_long$Language[i] <- "Specific"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "B" && d.CG.kid.DV_long$Trial[i] == "Trial 1"){
    d.CG.kid.DV_long$Language[i] <- "Specific"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "B" && d.CG.kid.DV_long$Trial[i] == "Trial 2"){
    d.CG.kid.DV_long$Language[i] <- "Specific"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "B" && d.CG.kid.DV_long$Trial[i] == "Trial 3"){
    d.CG.kid.DV_long$Language[i] <- "Specific"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "B" && d.CG.kid.DV_long$Trial[i] == "Trial 4"){
    d.CG.kid.DV_long$Language[i] <- "Specific"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "B" && d.CG.kid.DV_long$Trial[i] == "Trial 5"){
    d.CG.kid.DV_long$Language[i] <- "Generic"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "B" && d.CG.kid.DV_long$Trial[i] == "Trial 6"){
    d.CG.kid.DV_long$Language[i] <- "Generic"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "B" && d.CG.kid.DV_long$Trial[i] == "Trial 7"){
    d.CG.kid.DV_long$Language[i] <- "Generic"
  }
  else if (d.CG.kid.DV_long$GenOrder[i] == "B" && d.CG.kid.DV_long$Trial[i] == "Trial 8"){
    d.CG.kid.DV_long$Language[i] <- "Generic"
  }
  else{
    d.CG.kid.DV_long$Language[i] <- NA
  }
}


# Treat categorical variables as factors

d.CG.kid.DV_long$Language <- as.factor(d.CG.kid.DV_long$Language)
d.CG.kid.DV_long$GenOrder <- as.factor(d.CG.kid.DV_long$GenOrder)
d.CG.kid.DV_long$Generic <- as.factor(d.CG.kid.DV_long$Generic)
d.CG.kid.DV_long$Trial <- as.factor(d.CG.kid.DV_long$Trial)
d.CG.kid.DV_long$ID <- as.factor(d.CG.kid.DV_long$ID)


## Recode ##

#d.CG.kid.DV_long$GenOrder <- recode_factor(d.CG.kid.DV_long$GenOrder, B = "SubsetB", A = "SubsetA")


#### Reorder Factors for Analysis  ####
## Note, Reference level is listed first
d.CG.kid.DV_long$Language <- factor(d.CG.kid.DV_long$Language, levels=c("Specific", "Generic"))
d.CG.kid.DV_long$Generic <- factor(d.CG.kid.DV_long$Generic, levels=c("We", "You"))
d.CG.kid.DV_long$GenOrder <- factor(d.CG.kid.DV_long$GenOrder, levels=c("B", "A"))

write.csv(d.CG.kid.DV_long, "data/clean/me_to_we/exp_2.csv", row.names = FALSE)

