## Final Project - Data analyses
## 2022-04-05

## load libraries
library("rcompanion")
library("car")
library("effects")
library("multcomp")
library("dplyr")
library("emmeans")
library("rstatix")
library("tidyverse")
library("ggpubr")
library("broom")
library("tibble")

## importing dataset - final merged
f2fmerged <-read.csv("C:/Users/Brandy/Documents/GitHub/HotMessExpress/users/brandy/2_DataAnalyses/f2fMerged_clean.csv")


############TBL 1 iRAT-tRAT difference Scores
## ANCOVA for TBL 1 iRAT-tRAT difference scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL1 RAT diff
## normality plot
plotNormalHistogram(f2fmerged$TBL1_RATdiff)

## normalish data so keeping

## Homogeneity of Variance
leveneTest(TBL1_RATdiff~Cohort, data=f2fmerged)

## passed homogeneity of variance for TBL1_iRATSQ

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL1_RATdiff~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL1_RATdiff~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL1_iRATSQ
ANCOVA = lm(TBL1_RATdiff~Sum_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
anova(ANCOVA)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans


############TBL 2 iRAT-tRAT difference Scores
## ANCOVA for TBL 2 iRAT-tRAT difference scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL1 RAT diff
## normality plot
plotNormalHistogram(f2fmerged$TBL2_RATdiff)

## normalish data so keeping

## Homogeneity of Variance
leveneTest(TBL2_RATdiff~Cohort, data=f2fmerged)

## failed homogeneity of variance for TBL2_RATdiff

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL2_RATdiff~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL2_RATdiff~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL2_RATdiff for failed homogeneity of variance
ANCOVA = lm(TBL2_RATdiff~Sum_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
Anova(ANCOVA, Type="I", white.adjust=TRUE)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans



############TBL 3 iRAT-tRAT difference Scores
## ANCOVA for TBL 3 iRAT-tRAT difference scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL1 RAT diff
## normality plot
plotNormalHistogram(f2fmerged$TBL3_RATdiff)

## normalish data so keeping

## Homogeneity of Variance
leveneTest(TBL3_RATdiff~Cohort, data=f2fmerged)

## passed homogeneity of variance for TBL3_RATdiff

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL3_RATdiff~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL3_RATdiff~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL3_RATdiff for passing homogeneity of variance
ANCOVA = lm(TBL3_RATdiff~Sum_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
anova(ANCOVA)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans