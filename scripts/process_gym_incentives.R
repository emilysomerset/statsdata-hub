library(readxl)
library(dplyr)
library(tidyr)
library(readr)

df = read_excel("./data/raw/gym_incentives/main_data.xlsx") %>% mutate(ppid = row_number()) 

median_value <- median(df$pre_Average)

df <- df %>%
  mutate(ppid = row_number(),
         medianexer = if_else(pre_Average >= median_value, "above or equal", "below"))

# convert wide data to long format
df_long = select(df, ppid, pair, condition, pre10:pre1, `1`:`4`, post1:post2) %>% 
  gather(week_char, week_visits, c(pre10:pre1, `1`:`4`, post1:post2)) %>% 
  mutate(
    any_visit = if_else(week_visits > 0, 1, 0), 
    week_num = case_when(grepl("post", week_char) == TRUE ~ parse_number(week_char) + 4,
                         grepl("pre", week_char) == TRUE ~ parse_number(week_char) * (-1),
                         TRUE ~ parse_number(week_char)),
    pre_intervention  = if_else(week_num < 0, 1, 0),
    intervention      = if_else(week_num %in% seq(1, 4), 1, 0),
    post_intervention = if_else(week_num > 4, 1, 0),
    condition = factor(condition) %>% relevel(ref = "standard")
  ) %>% 
  left_join(select(df, ppid, Gender, medianexer))

write.csv(df_long, "data/clean/gym_incentives/gym_incentives.csv", row.names = FALSE)

