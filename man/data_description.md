## Example `man` file

*The following is an example file that could appear in the `man` folder. This folder is reserved for any descriptive information about your data or analyses that you did not put in the R markdown analysis file itself.*

### Definitions for grades 3-8 features

| File Column Location | Variable Title                   | Suggested R Name |Definition            | Type       | Range/Key               |
| :-----               | :--------------                  | :-------         | :----------          | :------    | :---------------------- |
| 1                  | GRADE LEVEL TESTED               | grade_level      | Grade level of test  | Numeric    | 3-8|
| 2                 | COUNTY-DISTRICT-CAMPUS NUMBER    | school_code      | School ID            | Numeric    | NA                      |
| 3                | STUDENT-ID                       | sid              | Student ID (Unique)  | Numeric    | NA                      |
| 4                | SEX-CODE                         | male             | Sex (Binary)         | Factor     | M = Male <br> F = Female|
| 5                   |ETHNICITY/RACE REPORTING CATEGORY | race_ethnicity        | Race-Ethnicity       | Factor   | H = Hispanic/Latino <br> I = American Indian or Alaska Native <br> A = Asian <br> B = Black or African American <br> P = Native Hawaiian or Other Pacific Islander <br> W= White <br> T = Two or More Races <br> N = No Information Provided|
| 6             | ECONOMIC-DISADVANTAGE-CODE       | eco_dis          | Levels/types of economic disadvantage | Factor | 1 = Eligible for free meals under the National School Lunch and Child Nutrition Program <br> 0 = Not identified as economically disadvantaged|
| 7             | LEP-INDICATOR-CODE               | lep              | Factor of LEP (limited English proficiency) level  | Factor     | 1 = Student is currently identified as LEP <br>  0 = Non-LEP student |
| 8            | SPECIAL-ED-INDICATOR-CODE        | iep             | Indicator if special education enrolled (has IEP) | Indicator | 1 = Yes <br> 0 = No |
| 9   | READING SCALE SCORE    | scaled_score_read | Scale score in reading   | Numeric  | 126-850 |
| 10   | MATH SCALE SCORE    | scaled_score_math | Scale score in Math   | Numeric  | 119-890 |
