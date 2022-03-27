library('rcompanion')
library('dplyr')
library('tidyr')
separateyears = f2fMerged_raw
arrange(separateyears, desc(Section))
## Wrong- did not create what I wanted- sepyears = separate(separateyears, 
## Section, c("2019" = "F2F_2019", "2020" = "F2F_2020","2021" = "F2F_2021" ))
years = f2fMerged_raw
years$2019<- NA
years$2020<- NA
years$2021<- NA
years$2019[years$Section == 'F2F_2019']<- 2019
years$2020[years$Section == 'F2F_2020']<- 2020
years$2021[years$Section == 'F2F_2021']<- 2021