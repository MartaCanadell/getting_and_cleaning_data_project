# Code Book

This code book that describes the variables and the data from the file *tidyData.txt*.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data, merged together in this dataset.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.

### Data

[1] "activity" : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING                                    
[2] "subject" : the subject who performed the activity for each window sample. Its range is from 1 to 30.

### Features:  From each window, a vector of features was obtained by calculating variables from the time and frequency domain. These are the following:                                 
[3] "TimeBodyAccMean-X"                            
[4] "TimeBodyAccMean-Y"                            
[5] "TimeBodyAccMean-Z"                            
[6] "TimeBodyAcc-std-X"                            
[7] "TimeBodyAcc-std-Y"                            
[8] "TimeBodyAcc-std-Z"                            
[9] "TimeGravityAccMean-X"                         
[10] "TimeGravityAccMean-Y"                         
[11] "TimeGravityAccMean-Z"                         
[12] "TimeGravityAcc-std-X"                         
[13] "TimeGravityAcc-std-Y"                         
[14] "TimeGravityAcc-std-Z"                         
[15] "TimeBodyAccJerkMean-X"                        
[16] "TimeBodyAccJerkMean-Y"                        
[17] "TimeBodyAccJerkMean-Z"                        
[18] "TimeBodyAccJerk-std-X"                        
[19] "TimeBodyAccJerk-std-Y"                        
[20] "TimeBodyAccJerk-std-Z"                        
[21] "TimeBodyGyroscopescopeMean-X"                 
[22] "TimeBodyGyroscopescopeMean-Y"                 
[23] "TimeBodyGyroscopescopeMean-Z"                 
[24] "TimeBodyGyroscopescope-std-X"                 
[25] "TimeBodyGyroscopescope-std-Y"                 
[26] "TimeBodyGyroscopescope-std-Z"                 
[27] "TimeBodyGyroscopescopeJerkMean-X"             
[28] "TimeBodyGyroscopescopeJerkMean-Y"             
[29] "TimeBodyGyroscopescopeJerkMean-Z"             
[30] "TimeBodyGyroscopescopeJerk-std-X"             
[31] "TimeBodyGyroscopescopeJerk-std-Y"             
[32] "TimeBodyGyroscopescopeJerk-std-Z"             
[33] "TimeBodyAccelerometerMagnitudeMean"           
[34] "TimeBodyAccelerometerMagnitudeSTD"            
[35] "TimeGravityAccelerometerMagnitudeMean"        
[36] "TimeGravityAccelerometerMagnitudeSTD"         
[37] "TimeBodyAccJerkMagnitudenitudeMean"           
[38] "TimeBodyAccJerkMagnitudenitudeSTD"            
[39] "TimeBodyGyroscopescopeMagMean"                
[40] "TimeBodyGyroscopescopeMagSTD"                 
[41] "TimeBodyGyroscopescopeJerkMagnitudenitudeMean"
[42] "TimeBodyGyroscopescopeJerkMagnitudenitudeSTD"
[43] "FreqBodyAccMean-X"                            
[44] "FreqBodyAccMean-Y"                            
[45] "FreqBodyAccMean-Z"                            
[46] "FreqBodyAcc-std-X"                            
[47] "FreqBodyAcc-std-Y"                            
[48] "FreqBodyAcc-std-Z"                            
[49] "FreqBodyAccJerkMean-X"                        
[50] "FreqBodyAccJerkMean-Y"                        
[51] "FreqBodyAccJerkMean-Z"                        
[52] "FreqBodyAccJerk-std-X"                        
[53] "FreqBodyAccJerk-std-Y"                        
[54] "FreqBodyAccJerk-std-Z"                        
[55] "FreqBodyGyroscopescopeMean-X"                 
[56] "FreqBodyGyroscopescopeMean-Y"                 
[57] "FreqBodyGyroscopescopeMean-Z"                 
[58] "FreqBodyGyroscopescope-std-X"                 
[59] "FreqBodyGyroscopescope-std-Y"                 
[60] "FreqBodyGyroscopescope-std-Z"                 
[61] "FreqBodyAccelerometerMagnitudeMean"           
[62] "FreqBodyAccelerometerMagnitudeSTD"            
[63] "FreqBodyAccJerkMagnitudenitudeMean"           
[64] "FreqBodyAccJerkMagnitudenitudeSTD"            
[65] "FreqBodyGyroscopescopeMagMean"                
[66] "FreqBodyGyroscopescopeMagSTD"                 
[67] "FreqBodyGyroscopescopeJerkMagnitudenitudeMean"
[68] "FreqBodyGyroscopescopeJerkMagnitudenitudeSTD"
