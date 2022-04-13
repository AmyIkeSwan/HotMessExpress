## Final Project - Demographics
## 2022-04-05

## load libraries
library("ggplot2")
library("tidyverse")

## importing dataset - final merged
f2fmerged <-read.csv("C:/Users/Brandy/Documents/GitHub/HotMessExpress/1_Users/Brandy/2_Data_Analyses/f2fMerged_clean.csv")

## importing dataset - final merged
f2fTeamRatings <-read.csv("C:/Users/Brandy/Documents/GitHub/HotMessExpress/1_Users/Brandy/2_Data_Analyses/f2fTeamRatings_TBL1_TBL3_clean.csv")

## means and sds by Cohort only
### means for introversion, extroversion, iRAT, and tRAT scores
f2fmerged %>%
  group_by(Cohort) %>%
  summarize (mean_Intro = mean(Sum_Introversion, na.rm = TRUE),
             mean_Extro = mean(Sum_Extroversion, na.rm = TRUE),
             mean_TBL1_iRAT = mean(TBL1_iRAT, na.rm = TRUE),
             mean_TBL1_tRAT = mean(TBL1_tRAT, na.rm = TRUE),
             mean_TBL1_RATdiff = mean(TBL1_RATdiff, na.rm = TRUE))

### sd for introversion, extroversion, iRAT, and tRAT scores
f2fmerged %>%
  group_by(Cohort) %>%
  summarize (sd_Intro = sd(Sum_Introversion, na.rm = TRUE),
             sd_Extro = sd(Sum_Extroversion, na.rm = TRUE),
             sd_TBL1_iRAT = sd(TBL1_iRAT, na.rm = TRUE),
             sd_TBL1_tRAT = sd(TBL1_tRAT, na.rm = TRUE),
             sd_TBL1_RATdiff = sd(TBL1_RATdiff, na.rm = TRUE))

### means for iRAT and tRAT scores
f2fmerged %>%
  group_by(Cohort) %>%
  summarize (mean_TBL2_iRAT = mean(TBL2_iRAT, na.rm = TRUE),
             mean_TBL2_tRAT = mean(TBL2_tRAT, na.rm = TRUE),
             mean_TBL2_RATdiff = mean(TBL2_RATdiff, na.rm = TRUE))

### sd for iRAT and tRAT scores
f2fmerged %>%
  group_by(Cohort) %>%
  summarize (sd_TBL2_iRAT = sd(TBL2_iRAT, na.rm = TRUE),
             sd_TBL2_tRAT = sd(TBL2_tRAT, na.rm = TRUE),
             sd_TBL2_RATdiff = sd(TBL2_RATdiff, na.rm = TRUE))

### means for iRAT, and tRAT scores
f2fmerged %>%
  group_by(Cohort) %>%
  summarize (mean_TBL3_iRAT = mean(TBL3_iRAT, na.rm = TRUE),
             mean_TBL3_tRAT = mean(TBL3_tRAT, na.rm = TRUE),
             mean_TBL3_RATdiff = mean(TBL3_RATdiff, na.rm = TRUE))

### sd for iRAT and tRAT scores
f2fmerged %>%
  group_by(Cohort) %>%
  summarize (sd_TBL3_iRAT = sd(TBL3_iRAT, na.rm = TRUE),
             sd_TBL3_tRAT = sd(TBL3_tRAT, na.rm = TRUE),
             sd_TBL3_RATdiff = sd(TBL3_RATdiff, na.rm = TRUE))


### means for team ratings
f2fTeamRatings %>%
  group_by(Cohort) %>%
  summarize (mean_TBL1_TeamRating = mean(TBL1_TeamRating, na.rm = TRUE),
             mean_TBL3_TeamRating = mean(TBL3_TeamRating, na.rm = TRUE),
             mean_TBL1_TBL3_diff = mean(TBL1_TBL3_diff, na.rm = TRUE))

### sd for team ratings
f2fTeamRatings %>%
  group_by(Cohort) %>%
  summarize (sd_TBL1_TeamRating = sd(TBL1_TeamRating, na.rm = TRUE),
             sd_TBL3_TeamRating = sd(TBL3_TeamRating, na.rm = TRUE),
             sd_TBL1_TBL3_diff = sd(TBL1_TBL3_diff, na.rm = TRUE))

### means for team ratings - TBL 1 Skills
f2fTeamRatings %>%
  group_by(Cohort) %>%
  summarize (mean_TBL1_1_Engagement = mean(TBL1_1_Engagement, na.rm = TRUE),
             mean_TBL1_2_Conflict = mean(TBL1_2_Conflict, na.rm = TRUE),
             mean_TBL1_3_Roles = mean(TBL1_3_Roles, na.rm = TRUE),
             mean_TBL1_4_DecisionMkg = mean(TBL1_4_DecisionMkg, na.rm = TRUE),
             mean_TBL1_5_Planning = mean(TBL1_5_Planning, na.rm = TRUE))

### sd for team ratings - TBL 1 Skills
f2fTeamRatings %>%
  group_by(Cohort) %>%
  summarize (sd_TBL1_1_Engagement = sd(TBL1_1_Engagement, na.rm = TRUE),
             sd_TBL1_2_Conflict = sd(TBL1_2_Conflict, na.rm = TRUE),
             sd_TBL1_3_Roles = sd(TBL1_3_Roles, na.rm = TRUE),
             sd_TBL1_4_DecisionMkg = sd(TBL1_4_DecisionMkg, na.rm = TRUE),
             sd_TBL1_5_Planning = sd(TBL1_5_Planning, na.rm = TRUE))

### means for team ratings - TBL 3 Skills
f2fTeamRatings %>%
  group_by(Cohort) %>%
  summarize (mean_TBL3_1_Engagement = mean(TBL3_1_Engagement, na.rm = TRUE),
             mean_TBL3_2_Conflict = mean(TBL3_2_Conflict, na.rm = TRUE),
             mean_TBL3_3_Roles = mean(TBL3_3_Roles, na.rm = TRUE),
             mean_TBL3_4_DecisionMkg = mean(TBL3_4_DecisionMkg, na.rm = TRUE),
             mean_TBL3_5_Planning = mean(TBL3_5_Planning, na.rm = TRUE))

### sd for team ratings - TBL 3 Skills
f2fTeamRatings %>%
  group_by(Cohort) %>%
  summarize (sd_TBL3_1_Engagement = sd(TBL3_1_Engagement, na.rm = TRUE),
             sd_TBL3_2_Conflict = sd(TBL3_2_Conflict, na.rm = TRUE),
             sd_TBL3_3_Roles = sd(TBL3_3_Roles, na.rm = TRUE),
             sd_TBL3_4_DecisionMkg = sd(TBL3_4_DecisionMkg, na.rm = TRUE),
             sd_TBL3_5_Planning = sd(TBL3_5_Planning, na.rm = TRUE))


### means for team ratings - difference in TBL 1 - TBL 3 Skills
f2fTeamRatings %>%
  group_by(Cohort) %>%
  summarize (mean_TBL1_TBL3_1_diff = mean(TBL1_TBL3_1_diff, na.rm = TRUE),
             mean_TBL1_TBL3_2_diff = mean(TBL1_TBL3_2_diff, na.rm = TRUE),
             mean_TBL1_TBL3_3_diff = mean(TBL1_TBL3_3_diff, na.rm = TRUE),
             mean_TBL1_TBL3_4_diff = mean(TBL1_TBL3_4_diff, na.rm = TRUE),
             mean_TBL1_TBL3_5_diff = mean(TBL1_TBL3_5_diff, na.rm = TRUE))

### sd for team ratings - TBL 1 Skills
f2fTeamRatings %>%
  group_by(Cohort) %>%
  summarize (sd_TBL1_TBL3_1_diff = sd(TBL1_TBL3_1_diff, na.rm = TRUE),
             sd_TBL1_TBL3_2_diff = sd(TBL1_TBL3_2_diff, na.rm = TRUE),
             sd_TBL1_TBL3_3_diff = sd(TBL1_TBL3_3_diff, na.rm = TRUE),
             sd_TBL1_TBL3_4_diff = sd(TBL1_TBL3_4_diff, na.rm = TRUE),
             sd_TBL1_TBL3_5_diff = sd(TBL1_TBL3_5_diff, na.rm = TRUE))
