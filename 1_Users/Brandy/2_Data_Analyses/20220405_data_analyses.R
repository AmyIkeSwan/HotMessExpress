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
f2fmerged <-read.csv("C:/Users/Brandy/Documents/GitHub/HotMessExpress/1_Users/Brandy/2_Data_Analyses/f2fMerged_clean.csv")

## importing dataset - final merged - Team Ratings
f2fTeamRatings <-read.csv("C:/Users/Brandy/Documents/GitHub/HotMessExpress/1_Users/Brandy/2_Data_Analyses/f2fTeamRatings_TBL1_TBL3_clean.csv")


############TBL 1 iRAT Scores
## ANCOVA for TBL 1 iRAT scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL1 iRAT
## normality plot
plotNormalHistogram(f2fmerged$TBL1_iRAT)

## not normal so need to transpose
f2fmerged$TBL1_iRATSQ <- f2fmerged$TBL1_iRAT*f2fmerged$TBL1_iRAT
plotNormalHistogram(f2fmerged$TBL1_iRATSQ)

## transposed by SQ looks more normal - use TBL1_iRATSQ

## Homogeneity of Variance
leveneTest(TBL1_iRATSQ~Cohort, data=f2fmerged)

## passed homogeneity of variance for TBL1_iRATSQ

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL1_iRATSQ~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL1_iRATSQ~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL1_iRATSQ
ANCOVA = lm(TBL1_iRATSQ~Sum_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
anova(ANCOVA)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans

## Interpret
### Trend findings for cohort difference in TBL1_iRAT scores (p = 0.0664)
### with Introversion and Extroversion scores as covariates.

############TBL 1 tRAT Scores
## ANCOVA for TBL 1 tRAT scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL1 tRAT
## normality plot
plotNormalHistogram(f2fmerged$TBL1_tRAT)

## not normal so need to transpose - Square
f2fmerged$TBL1_tRATSQ <- f2fmerged$TBL1_tRAT*f2fmerged$TBL1_tRAT
plotNormalHistogram(f2fmerged$TBL1_tRATSQ)

## not normal so need to transpose - Cube
f2fmerged$TBL1_tRATCUBE <- f2fmerged$TBL1_tRAT^3
plotNormalHistogram(f2fmerged$TBL1_tRATCUBE)

## transposed by CUBE - still not normal, but CUBE is best

## Homogeneity of Variance
leveneTest(TBL1_tRATCUBE~Cohort, data=f2fmerged)

## failed homogeneity of variance for TBL1_tRATCUBE

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL1_tRATCUBE~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL1_tRATCUBE~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL1_tRATCUBE for failed homogeneity of variance
ANCOVA = lm(TBL1_tRATCUBE~Sum_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
Anova(ANCOVA, Type="I", white.adjust=TRUE)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans


############TBL 2 iRAT Scores
## ANCOVA for TBL 2 iRAT scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL2 iRAT
## normality plot
plotNormalHistogram(f2fmerged$TBL2_iRAT)

## normal so keep original variable

## Homogeneity of Variance
leveneTest(TBL2_iRAT~Cohort, data=f2fmerged)

## failed homogeneity of variance for TBL2_iRAT

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL2_iRAT~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL2_iRAT~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL2_iRATSQ for failed Homogeneity of variance
ANCOVA = lm(TBL2_iRAT~Sum_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
Anova(ANCOVA, Type="I", white.adjust=TRUE)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans

############TBL 2 tRAT Scores
## ANCOVA for TBL 2 tRAT scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL2 tRAT
## normality plot
plotNormalHistogram(f2fmerged$TBL2_tRAT)

## not normal so need to transpose - Square
f2fmerged$TBL2_tRATSQ <- f2fmerged$TBL2_tRAT*f2fmerged$TBL2_tRAT
plotNormalHistogram(f2fmerged$TBL2_tRATSQ)

## not normal so need to transpose - Cube
f2fmerged$TBL2_tRATCUBE <- f2fmerged$TBL2_tRAT^3
plotNormalHistogram(f2fmerged$TBL2_tRATCUBE)

## transposed by CUBE - still not normal, but CUBE is best

## Homogeneity of Variance
leveneTest(TBL2_tRATCUBE~Cohort, data=f2fmerged)

## failed homogeneity of variance for TBL2_tRATCUBE

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL2_tRATCUBE~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL2_tRATCUBE~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL2_tRATCUBE for failed homogeneity of variance
ANCOVA = lm(TBL2_tRATCUBE~Mean_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
Anova(ANCOVA, Type="I", white.adjust=TRUE)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans



############TBL 3 iRAT Scores
## ANCOVA for TBL 3 iRAT scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL3 iRAT
## normality plot
plotNormalHistogram(f2fmerged$TBL3_iRAT)

## normal distribution so no transformation

## Homogeneity of Variance
leveneTest(TBL3_iRAT~Cohort, data=f2fmerged)

## passed homogeneity of variance

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL3_iRAT~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL3_iRAT~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL3_iRAT
ANCOVA = lm(TBL3_iRAT~Sum_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
anova(ANCOVA)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans

############TBL 3 tRAT Scores
## ANCOVA for TBL 3 tRAT scores

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fmerged$Cohort)
f2fmerged$Cohort <- as.factor(f2fmerged$Cohort)

## Testing Assumptions - for TBL3_tRAT
## normality plot for TBL3_tRAT
plotNormalHistogram(f2fmerged$TBL3_tRAT)

## not normal so need to transpose - Square
f2fmerged$TBL3_tRATSQ <- f2fmerged$TBL3_tRAT*f2fmerged$TBL3_tRAT
plotNormalHistogram(f2fmerged$TBL3_tRATSQ)

## not normal so need to transpose - Cube
f2fmerged$TBL3_tRATCUBE <- f2fmerged$TBL3_tRAT^3
plotNormalHistogram(f2fmerged$TBL3_tRATCUBE)

## transposed by CUBE - still not normal, but CUBE is best

## Homogeneity of Variance for TBL3_tRATCUBE
leveneTest(TBL3_tRATCUBE~Cohort, data=f2fmerged)

## passed homogeneity of variance for TBL2_tRATCUBE

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL3_tRATCUBE~Sum_Introversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL3_tRATCUBE~Sum_Extroversion, data=f2fmerged)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL1_tRATCUBE for passed homogeneity of variance
ANCOVA = lm(TBL3_tRATCUBE~Sum_Introversion + Sum_Extroversion + Cohort, data=f2fmerged)
anova(ANCOVA)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans


############TBL 1 Teaming Ratings
## ANCOVA for TBL 1 Team Ratings

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fTeamRatings$Cohort)
f2fTeamRatings$Cohort <- as.factor(f2fTeamRatings$Cohort)

## Testing Assumptions - for TBL1_TeamRating
## normality plot
plotNormalHistogram(f2fTeamRatings$TBL1_TeamRating)

## normalish - no transposing


## Homogeneity of Variance
leveneTest(TBL1_TeamRating~Cohort, data=f2fTeamRatings)

## passed homogeneity of variance for TBL1_TeamRatings

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL1_TeamRating~Mean_Introversion, data=f2fTeamRatings)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL1_TeamRating~Mean_Extroversion, data=f2fTeamRatings)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL1_TeamRating for passed homogeneity of variance
ANCOVA = lm(TBL1_TeamRating~Mean_Introversion + Mean_Extroversion + Cohort, data=f2fTeamRatings)
anova(ANCOVA)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans


############TBL 3 Teaming Ratings
## ANCOVA for TBL 3 Team Ratings

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fTeamRatings$Cohort)
f2fTeamRatings$Cohort <- as.factor(f2fTeamRatings$Cohort)

## Testing Assumptions - for TBL1_TeamRating
## normality plot
plotNormalHistogram(f2fTeamRatings$TBL3_TeamRating)

## data negatively skewed so transforming - square
f2fTeamRatings$TBL3_TeamRatingSQ <- f2fTeamRatings$TBL3_TeamRating*f2fTeamRatings$TBL3_TeamRating
plotNormalHistogram(f2fTeamRatings$TBL3_TeamRatingSQ)

## not improved, so trying cube
f2fTeamRatings$TBL3_TeamRatingCUBE <- f2fTeamRatings$TBL3_TeamRating^3
plotNormalHistogram(f2fTeamRatings$TBL3_TeamRatingCUBE)

## neither improved so using original variable

## Homogeneity of Variance
leveneTest(TBL3_TeamRating~Cohort, data=f2fTeamRatings)

## passed homogeneity of variance for TBL3_TeamRatings

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL3_TeamRating~Mean_Introversion, data=f2fTeamRatings)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL3_TeamRating~Mean_Extroversion, data=f2fTeamRatings)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL3_TeamRating for passed homogeneity of variance
ANCOVA = lm(TBL3_TeamRating~Mean_Introversion + Mean_Extroversion + Cohort, data=f2fTeamRatings)
anova(ANCOVA)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans


############TBL 1 and TBL 3 Difference scores for Teaming Ratings
## ANCOVA for TBL 1 and 3 Difference scores for Team Ratings

## make this example reproducible
set.seed(0)

## make sure IV and covariates are factors
### IV - Cohort
str(f2fTeamRatings$Cohort)
f2fTeamRatings$Cohort <- as.factor(f2fTeamRatings$Cohort)

## Testing Assumptions - for TBL1_TeamRating
## normality plot
plotNormalHistogram(f2fTeamRatings$TBL1_TBL3_diff)

## neither improved so using original variable

## Homogeneity of Variance
leveneTest(TBL1_TBL3_diff~Cohort, data=f2fTeamRatings)

## passed homogeneity of variance for TBL1_TBL3_diff

## Homogeneity of Regression Slopes
### Introversion Score
Homogeneity_RegrSlp1 = lm(TBL1_TBL3_diff~Mean_Introversion, data=f2fTeamRatings)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Introversion Score

### Extroversion Score
Homogeneity_RegrSlp1 = lm(TBL1_TBL3_diff~Mean_Extroversion, data=f2fTeamRatings)
anova(Homogeneity_RegrSlp1)

## NS - KEEP Extroversion Score

## Running ANCOVA for TBL3_TeamRating for passed homogeneity of variance
ANCOVA = lm(TBL1_TBL3_diff~Mean_Introversion + Mean_Extroversion + Cohort, data=f2fTeamRatings)
anova(ANCOVA)

## Run PostHocs
postHocs <- glht(ANCOVA,linfct=mcp(Cohort = "Tukey"))
summary(postHocs)

## Determine Means
adjMeans <- effect("Cohort", ANCOVA)
adjMeans