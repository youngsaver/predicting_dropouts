## Example `man` file

*The following is an example file that could appear in the `man` folder. This folder is reserved for any descriptive information about your data or analyses that you did not put in the R markdown analysis file itself.*

### Definitions for grades 3-8 features

| File Column Location | Variable Title                   | Suggested R Name |Definition            | Type       | Range/Key               |
| :-----               | :--------------                  | :-------         | :----------          | :------    | :---------------------- |
| 5-6                  | GRADE LEVEL TESTED               | grade_level      | Grade level of test  | Numeric    | 03-08|
| 9-17                 | COUNTY-DISTRICT-CAMPUS NUMBER    | school_code      | School ID            | Numeric    | NA                      |
| 74-82                | STUDENT-ID                       | sid              | Student ID (Unique)  | Numeric    | NA                      |
| 83-83                | SEX-CODE                         | male             | Sex (Binary)         | Factor     | M = Male <br> F = Female|
| 99                   |ETHNICITY/RACE REPORTING CATEGORY | race_ethnicity        | Race-Ethnicity       | Factor   | H = Hispanic/Latino <br> I = American Indian or Alaska Native <br> A = Asian <br> B = Black or African American <br> P = Native Hawaiian or Other Pacific Islander <br> W= White <br> T = Two or More Races <br> N = No Information Provided|
| 100             | ECONOMIC-DISADVANTAGE-CODE       | eco_dis          | Levels/types of economic disadvantage | Factor | 1 = Eligible for free meals under the National School Lunch and Child Nutrition Program <br> 2 = Eligible for reduced-price meals under the National School Lunch and Child Nutrition Program <br> 9 = Other economic disadvantage <br> 0 = Not identified as economically disadvantaged|
| 101             | TITLE-I-PART-A-INDICATOR-CODE    | title_1          | Title 1 school factor | Factor    | 6 = Student attends campus with school-wide program <br> 7 = Student participates in program at targeted assistance school <br> 8 = Student is previous participant in program at targeted assistance school (not a current participant) <br> 9 = Student does not attend a Title I, Part A school but receives Title I, Part A services because the student is homeless <br> 0 = Student does not currently participate in and has not previously participated in program at current campus|
| 102             | MIGRANT-INDICATOR-CODE           | migrant          | Indicator of migrant |Indicator   | 1 = Student identified as migrant <br> 0 = Not identified as migrant|
| 107             | LEP-INDICATOR-CODE               | lep              | Factor of LEP (limited English proficiency) level  | Factor     | C = Student is currently identified as LEP <br> F = Student has met criteria for bilingual/ESL program exit, is no longer classified as LEP in TSDS PEIMS, and is in first year of monitoring <br> S = Student in second year of monitoring <br> 0 = Other Non-LEP student |
| 111            | SPECIAL-ED-INDICATOR-CODE        | iep             | Indicator if special education enrolled (has IEP) | Indicator | 1 = Yes <br> 0 = No |
| 409-412   | READING SCALE SCORE    | scaled_score_read | Scale score in reading   | Numeric  | NA |
| 612-614   | READING PERCENTILE | percentile_read  | Percentile in Reading, compared with students who took same test prior year | Numeric | 0-99  |
| 763-766   | MATH SCALE SCORE    | scaled_score_math | Scale score in Math   | Numeric  | NA |
| 969-971   | MATH PERCENTILE | percentile_math  | Percentile in MATH, compared with students who took same test prior year | Numeric | 0-99  |
| 1109-1112 | WRITING SCALE SCORE    | scaled_score_writ | Scale score in Writing   | Numeric  | NA |
| 1126      | WRITTEN COMPOSITION SCORE  | composition   | Written composition score | Ordinal | 0 = Nonscorable <br> 2 = Very Limited <br> 3 = Between Very Limited and Basic <br> 4 = Basic <br> 5 = Between Basic and Satisfactory <br> 6 = Satisfactory <br> 7 = Between Satisfactory and Accomplished <br> 8 = Accomplished <br> Score of 1 is not possible |
| 1311-1313   | WRITING PERCENTILE | percentile_writ  | Percentile in Writing, compared with students who took same test prior year | Numeric | 0-99  |
| 1911-1914 | SCIENCE SCALE SCORE    | scaled_score_sc | Scale score in Science   | Numeric  | NA |
| 2163-2165   | SCIENCE PERCENTILE | percentile_sc  | Percentile in Science, compared with students who took same test prior year | Numeric | 0-99  |
