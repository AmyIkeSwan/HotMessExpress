# The Hot Mess Express
Group Final Project Repo

![This is an image](https://github.com/AmyIkeSwan/HotMessExpress/blob/main/4_Final%20Presentation%20Documents/HotMessExpress.png)

## Team Members
- Samantha Diaz
- Destiny Riley
- Brandy M. Roane
- Amy Swanson
- Stephanie VanLeishout

## Team Communication Plan
### Lesson 1 Get to Know Your Team
https://github.com/AmyIkeSwan/HotMessExpress/blob/main/Zoom%20Meeting%20Notes/Lesson%20Documents/Lesson1_HandsOn_KnowYourTeam.zip

### Meeting Notes (see Team Weekly Meetings section)

## Hot Mess Kanban
https://github.com/AmyIkeSwan/HotMessExpress/projects/1

## Questions our Team will be addressing
### Quick snapshot of variables
Complete list of variables can be found below under "Notes regarding final variables"
- **Independent variable**: Cohort (3 cohorts: pre, during, and post COVID)
- **Dependent variables**: Students engaged in 4 Team-Based Learning (TBL) activities during their first semester. Data from the first 3 TBLs will be used (iRAT scores, tRAT scores, Team Ratings on performance).
- **Covariate variables**: Self-reported data on introversion and extroversion  

### Overall objective
Determine if the pandemic and subsequent quarantine impacted the academic performance for medical science students.

### Question 1
Did the pandemic and subsequent quarantine impact individual academic performance for medical science students?
### Question 2
Did the pandemic and subsequent quarantine impact team academic performance for medical science students?
### Question 3
Did the pandemic and subsequent quarantine impact team dynamics during academic activities for medical science students?

## Dataset(s)
- Datasets are from graduate medical science students attending during the academic years 2019-2021.
- Important note regarding raw dataset: 7999 = Legitimate Skip (data missing due to an excused absence)
- Important note regarding raw dataset: 9999 = Missing (data missing due to failure to submit work)

### Notes on data cleaning and links to final clean datasets
#### Raw datasets
- https://github.com/AmyIkeSwan/HotMessExpress/tree/main/2_Data/0_Data_Raw

#### Data cleaning notes
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/2_Data/1_Data_Clean/datawranglingNotes.ipynb

#### Clean datasets
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/2_Data/1_Data_Clean/f2fMerged_clean.csv
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/2_Data/1_Data_Clean/f2fTeamRatings_TBL1_TBL3_clean.csv

## Data Wrangling
### Inclusion/Exclusion criteria
- **Inclusion**: Students enrolled in a medical science program during the 2019-2021 academic years
- **Exclusion**: Students who did not complete the Introversion-Extroversion scale
- **Exclusion**: Individuals who did not complete all three iRATs
- **Exclusion**: Teams who did not complete all three tRATs
- **Exclusion**: Teams who did not complete TBLs 1 and 3 Team Ratings (for difference scores)

### Notes regarding dropped data rows
- Rows removed from dataset based on the above exclusion criteria
- Specific details on dropped data rows are outlined in the "Data cleaning notes" section above

### Notes regarding final variables
- **UID**: unique identification for each student
- **TeamUID**: unique identification for each Team by Cohort (e.g., 201901 = Cohort 2019, Team 01)
- **Cohort**: year student began the one-year program (2019, 2020, 2021)
- **Group**: group number student was assigned to for TBL activities
- **TBL#_iRAT**: score student earned on the Indivdiual Readiness Assurance Test (iRAT) for the specified TBL # (e.g., TBL1_iRAT = iRAT score for TBL 1)
- **TBL#_tRAT**: score team earned on the Team Readiness Assurance Test (tRAT) for the specified TBL # (e.g., TBL1_tRAT = tRAT score for TBL 1). The score is the same for all team members on a Team
- **TBL#_RATdiff**: difference score between the iRAT and tRAT for the TBL (tRAT-(iRAT*3)). The iRAT score has been multiplied by 3 so it is the same scale as the tRAT (iRAT was worth 5 points and tRAT was worth 15 points)
- **TBL#_TeamRating**: sum total of the team-rated rubric for team performance during the TBL activity for the specified TBL # (e.g., TBL1_TeamRating = total score for team-rated rubric for TBL 1). Scale is 0-20.
- **TBL#_1_Engagement**: Team-reported competency on Skill 1 - Engagement on the Team Rubric (scale 0-4)
- **TBL#_2_Conflict**: Team-reported competency on Skill 2 - Conflict on the Team Rubric (scale 0-4)
- **TBL#_3_Roles**: Team-reported competency on Skill 3 - Roles on the Team Rubric (scale 0-4)
- **TBL#_4_DecisionMkg**: Team-reported competency on Skill 4 - Decision Making on the Team Rubric (scale 0-4)
- **TBL#_5_Planning**: Team-reported competency on Skill 5 - Planning on the Team Rubric (scale 0-4)
- **TBL1_TBL3_diff**: difference score between TBL1 and TBL 3 Team Ratings (TBL3 - TBL 1). Positive means increase in rating. Negative means decrease in rating.
- **TBL1_TBL3_#_diff**: difference score between TBL1 and TBL 3 Team Ratings (TBL3 - TBL 1) for each of the 5 competency skills (Engagement, Conflict, Roles, Decision Making, and Planning). Positive means increase in rating. Negative means decrease in rating.
- **Sum_Introversion**: total introversion score on the self-reported introversion-extroversion scale. Higher scores = greater introversion tendencies
- **Sum_Extroversion**: total extroversion score on the self-reported introversion-extroversion scale. Higher scores = greater extroversion tendencies
- **Mean_Introversion**: mean introversion score on the self-reported introversion-extroversion scale for each Team by Cohort. 
- **Mean_Extroversion**: mean extroversion score on the self-reported introversion-extroversion scale for each Team by Cohort. 

## Data Analyses Plan
### Lesson 1 Data Analysis Plan
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/0_Zoom%20Meeting%20Notes/Lesson%20Documents/Lesson1_AnalysisPlanWksht.zip

## Data Visualization
### Data visualizations completed in Tableau and Python
- Images for visualizations created in Tableau and syntax files for Data Visualizations done in Python are in "2_Data_Analyses" folder
- https://github.com/AmyIkeSwan/HotMessExpress/tree/main/2_Data/2_Data_Analyses

## Data Analysis and Results
### Data analysis completed in Python and R
- Syntax files for all Data Analyses are in "2_Data_Analyses" folder
- https://github.com/AmyIkeSwan/HotMessExpress/tree/main/2_Data/2_Data_Analyses

## Presentation and Summary 
### Presentation on Google Sheets
### Presentation time: ~25 minutes of our 30 minute timeslot
https://docs.google.com/presentation/d/1cJ5B8aqDtcGnCHtd2hwXAbteYacIixa-/edit?usp=sharing&ouid=114080170415032720264&rtpof=true&sd=true

## Team Resources
### Resource for Updating README.md on GitHub
https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#links

## Team Weekly Meetings
### Weekly Zoom Meeting Link
https://unthsc.zoom.us/j/82134109717

### Week 1
#### March 6, 2022 Recording
https://unthsc.zoom.us/rec/share/oof4KI0FoEHzXI7TjXllnxobGhldWno_R1AwhJo-Tp3h3g9Sc8qhImLKZRReuoEQ.lALO5UURvoKFlpgY?startTime=1646608184000 (Passcode: 0PQyZ^@w)
#### Summary Documents

### Week 2
#### March 14, 2022 Recording
https://unthsc.zoom.us/rec/share/5p3d0nT3ve5H1a83wmCZ4J2WQ8fyal1bywPQDYtegWC_yHp31tLV3-92eEcKgCkZ.d66Yy2hrEa1hcUox?startTime=1647295914000 (Passcode: mE^+GL!6)
#### Summary Documents
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/0_Zoom%20Meeting%20Notes/Eternals%20Meeting%20Minutes%20-%203.14.zip

### Week 3
#### March 20, 2022 Recording
https://unthsc.zoom.us/rec/share/Ane7UM6Zz_t-wdP4iAuEIPlf_HJiyUBEtm4d1chDzEqAl8HBR40pwIDbqObmLLE.kvBLX084L6D0W38r?startTime=1647806726000 (Passcode: wy1*QtCa)
#### Summary Documents
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/0_Zoom%20Meeting%20Notes/Notes%20for%20Data%20Wrangling%20Meeting%203_20_22.zip
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/0_Zoom%20Meeting%20Notes/Lesson%20Documents/Eternals%20Lesson2.zip

### Week 4
#### March 27, 2022 Recording
https://unthsc.zoom.us/rec/share/H_ocAcu1asarzGIgZokDMKBilQ_mS9siQ5C6OFIjWsf007Mz6UqfjNrc3w5vNGb9.gDC_0FgRi7cCTzMJ?startTime=1648421765000 (Passcode: ZwYx!93J)
#### Summary Documents
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/0_Zoom%20Meeting%20Notes/Lesson%20Documents/Eternals%20Lesson%204%20Summary%20%26%20Code.zip

### Week 5
#### April 3, 2022 Recording
https://unthsc.zoom.us/rec/share/5HjQ7X3xJjX2YJNoL91nfJ38RGuRqKfhvK4bRbESDLjRyKsaNMisDY7mV3uvqTkP.5llQV5ufRVqDPi22?startTime=1649028885000 (Passcode: ?W0jpd8b)
#### Summary Documents
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/0_Zoom%20Meeting%20Notes/Lesson%20Documents/Eternals%20Lesson5%20Materials.zip

#### April 6, 2022 Recording
https://unthsc.zoom.us/rec/share/F323t6dOGPrkEq_4vkXKEoahksGYasKs48O05bbGiGJBiuhMwhBmkNIPTpoGnr8x.yuvD5By2w-6Tkpxz?startTime=1649289967000 (Passcode: #Uzaa#0%)
#### Summary Documents
- See video walkthrough of the analyses and interpretation

### Week 6
#### April 10, 2022
https://unthsc.zoom.us/rec/share/DmmSsTrrPWvOHxVvlwmItWPAiFSfmUBoydqqbclRkln3VEixKNLHVjPQIYrUv0SS.XKUVuHxitPCWQwTf?startTime=1649635564000 (Passcode: 5!hT*iWY)
#### Summary Documents
- https://github.com/AmyIkeSwan/HotMessExpress/blob/main/Zoom%20Meeting%20Notes/Lesson%20Documents/EternalsLesson5Materials.zip

### Week 7
#### April 11, 2022
https://unthsc.zoom.us/rec/share/uN_OiEuSqeJXIoF5XUvahvFTvAYLPmIjh1B6oe5W-QkDS8QtlDiEq109J4Lql6g2.2TgeF-fQzLjCDpt-?startTime=1649722305000 (Passcode: e9AZx8y#)

#### Summary Documents
- Presentation practice run

### Week 7
#### April 12, 2022
https://unthsc.zoom.us/rec/share/x7Ucu3F4yYoFw9opxMSg7HeYERv2gF1nVO-AcyHMq8kHSp_luURukEyeDTKQGrJ0.Js2tYYlbdxnrbZ1p?startTime=1649802856000 (Passcode: 39n%v!mj)

#### Summary Documents
- Presentation practice run

### Week 7
#### April 13, 2022

#### Summary Documents
- NA

## Additional notes that don't fit above in a category
### Amy
- All collaborators added
- Second time is the charm, please clone this repository by clicking the green code button button.

### Brandy
- 2022-03-27 I accepted invite and cloned the new repository

### Destiny
- 2022-03-27 - Drafted and uploaded Summary document for L3

### Sam
