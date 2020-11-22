---
title: 'Getting & Cleaning Data: Course Project'
author: "Altamash Saqib"
date: "11/22/2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This codebook for the dataset: tidy_data contains the information for the 
columns of the respective data.


Subject - ID of the Subject
Activity - Activity performed for the respective data value

Activity List
1 - WALKING
2 - WALKING_UPSTAIRS
3 - WALKING_DOWNSTAIRS
4 - SITTING
5 - STANDING
6 - LAYING

Measurements:
 [3] "TimeBodyAcceleration-mean()-X"                                 
 [4] "TimeBodyAcceleration-mean()-Y"                                 
 [5] "TimeBodyAcceleration-mean()-Z"                                 
 [6] "TimeGravityAcceleration-mean()-X"                              
 [7] "TimeGravityAcceleration-mean()-Y"                              
 [8] "TimeGravityAcceleration-mean()-Z"                              
 [9] "TimeBodyAccelerationJerk-mean()-X"                             
[10] "TimeBodyAccelerationJerk-mean()-Y"                             
[11] "TimeBodyAccelerationJerk-mean()-Z"                             
[12] "TimeBodyGyroscope-mean()-X"                                    
[13] "TimeBodyGyroscope-mean()-Y"                                    
[14] "TimeBodyGyroscope-mean()-Z"                                    
[15] "TimeBodyGyroscopeJerk-mean()-X"                                
[16] "TimeBodyGyroscopeJerk-mean()-Y"                                
[17] "TimeBodyGyroscopeJerk-mean()-Z"                                
[18] "TimeBodyAccelerationMagnitude-mean()"  
[19] "TimeGravityAccelerationMagnitude-mean()"                       
[20] "TimeBodyAccelerationJerkMagnitude-mean()"                      
[21] "TimeBodyGyroscopeMagnitude-mean()"                             
[22] "TimeBodyGyroscopeJerkMagnitude-mean()"                         
[23] "frequencyBodyAcceleration-mean()-X"                            
[24] "frequencyBodyAcceleration-mean()-Y"                            
[25] "frequencyBodyAcceleration-mean()-Z"                            
[26] "frequencyBodyAcceleration-meanFrequency()-X"                   
[27] "frequencyBodyAcceleration-meanFrequency()-Y"                   
[28] "frequencyBodyAcceleration-meanFrequency()-Z"                   
[29] "frequencyBodyAccelerationJerk-mean()-X"                        
[30] "frequencyBodyAccelerationJerk-mean()-Y"                        
[31] "frequencyBodyAccelerationJerk-mean()-Z"                        
[32] "frequencyBodyAccelerationJerk-meanFrequency()-X"               
[33] "frequencyBodyAccelerationJerk-meanFrequency()-Y"               
[34] "frequencyBodyAccelerationJerk-meanFrequency()-Z"               
[35] "frequencyBodyGyroscope-mean()-X"                               
[36] "frequencyBodyGyroscope-mean()-Y"                               
[37] "frequencyBodyGyroscope-mean()-Z"                               
[38] "frequencyBodyGyroscope-meanFrequency()-X"                      
[39] "frequencyBodyGyroscope-meanFrequency()-Y"                      
[40] "frequencyBodyGyroscope-meanFrequency()-Z"                      
[41] "frequencyBodyAccelerationMagnitude-mean()"                     
[42] "frequencyBodyAccelerationMagnitude-meanFrequency()"            
[43] "frequencyBodyBodyAccelerationJerkMagnitude-mean()"             
[44] "frequencyBodyBodyAccelerationJerkMagnitude-meanFrequency()"    
[45] "frequencyBodyBodyGyroscopeMagnitude-mean()"                    
[46] "frequencyBodyBodyGyroscopeMagnitude-meanFrequency()"           
[47] "frequencyBodyBodyGyroscopeJerkMagnitude-mean()"                
[48] "frequencyBodyBodyGyroscopeJerkMagnitude-meanFrequency()"
[49] "TimeBodyAcceleration-StandardDeviation()-X"                    
[50] "TimeBodyAcceleration-StandardDeviation()-Y"                    
[51] "TimeBodyAcceleration-StandardDeviation()-Z"                    
[52] "TimeGravityAcceleration-StandardDeviation()-X"                 
[53] "TimeGravityAcceleration-StandardDeviation()-Y"                 
[54] "TimeGravityAcceleration-StandardDeviation()-Z"                 
[55] "TimeBodyAccelerationJerk-StandardDeviation()-X"                
[56] "TimeBodyAccelerationJerk-StandardDeviation()-Y"                
[57] "TimeBodyAccelerationJerk-StandardDeviation()-Z"                
[58] "TimeBodyGyroscope-StandardDeviation()-X"                       
[59] "TimeBodyGyroscope-StandardDeviation()-Y"                       
[60] "TimeBodyGyroscope-StandardDeviation()-Z"                       
[61] "TimeBodyGyroscopeJerk-StandardDeviation()-X"                   
[62] "TimeBodyGyroscopeJerk-StandardDeviation()-Y"                   
[63] "TimeBodyGyroscopeJerk-StandardDeviation()-Z"                   
[64] "TimeBodyAccelerationMagnitude-StandardDeviation()"             
[65] "TimeGravityAccelerationMagnitude-StandardDeviation()"          
[66] "TimeBodyAccelerationJerkMagnitude-StandardDeviation()"         
[67] "TimeBodyGyroscopeMagnitude-StandardDeviation()"                
[68] "TimeBodyGyroscopeJerkMagnitude-StandardDeviation()"            
[69] "frequencyBodyAcceleration-StandardDeviation()-X"               
[70] "frequencyBodyAcceleration-StandardDeviation()-Y"               
[71] "frequencyBodyAcceleration-StandardDeviation()-Z"               
[72] "frequencyBodyAccelerationJerk-StandardDeviation()-X"           
[73] "frequencyBodyAccelerationJerk-StandardDeviation()-Y"           
[74] "frequencyBodyAccelerationJerk-StandardDeviation()-Z"           
[75] "frequencyBodyGyroscope-StandardDeviation()-X"                  
[76] "frequencyBodyGyroscope-StandardDeviation()-Y"                  
[77] "frequencyBodyGyroscope-StandardDeviation()-Z"                  
[78] "frequencyBodyAccelerationMagnitude-StandardDeviation()"        
[79] "frequencyBodyBodyAccelerationJerkMagnitude-StandardDeviation()"
[80] "frequencyBodyBodyGyroscopeMagnitude-StandardDeviation()"       
[81] "frequencyBodyBodyGyroscopeJerkMagnitude-StandardDeviation()"   
