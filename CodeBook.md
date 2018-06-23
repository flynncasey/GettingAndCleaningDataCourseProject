# Codebook

## Data Origin and Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ (see "/UCI HAR Dataset/features_info.txt" for more).These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

## Variables

Variables in the tidy data set ("tidy_data.txt") include a subject identifier (1 through 30), activity label ('WALKING','WALKING UPSTAIRS','WALKING DOWNSTAIRS','SITTING','STANDING',or 'LAYING'), and a series of variables extracted on the means and standard deviations for the above features. Comprehensive list of variables:

subject
activity
tBodyAcc_X_Mean
tBodyAcc_Y_Mean
tBodyAcc_Z_Mean
tBodyAcc_X_SD
tBodyAcc_Y_SD
tBodyAcc_Z_SD
tGravityAcc_X_Mean
tGravityAcc_Y_Mean
tGravityAcc_Z_Mean
tGravityAcc_X_SD
tGravityAcc_Y_SD
tGravityAcc_Z_SD
tBodyAccJerk_X_Mean
tBodyAccJerk_Y_Mean
tBodyAccJerk_Z_Mean
tBodyAccJerk_X_SD
tBodyAccJerk_Y_SD
tBodyAccJerk_Z_SD
tBodyGyro_X_Mean
tBodyGyro_Y_Mean
tBodyGyro_Z_Mean
tBodyGyro_X_SD
tBodyGyro_Y_SD
tBodyGyro_Z_SD
tBodyGyroJerk_X_Mean
tBodyGyroJerk_Y_Mean
tBodyGyroJerk_Z_Mean
tBodyGyroJerk_X_SD
tBodyGyroJerk_Y_SD
tBodyGyroJerk_Z_SD
tBodyAccMag_Mean
tBodyAccMag_SD
tGravityAccMag_Mean
tGravityAccMag_SD
tBodyAccJerkMag_Mean
tBodyAccJerkMag_SD
tBodyGyroMag_Mean
tBodyGyroMag_SD
tBodyGyroJerkMag_Mean
tBodyGyroJerkMag_SD
fBodyAcc_X_Mean
fBodyAcc_Y_Mean
fBodyAcc_Z_Mean
fBodyAcc_X_SD
fBodyAcc_Y_SD
fBodyAcc_Z_SD
fBodyAccJerk_X_Mean
fBodyAccJerk_Y_Mean
fBodyAccJerk_Z_Mean
fBodyAccJerk_X_SD
fBodyAccJerk_Y_SD
fBodyAccJerk_Z_SD
fBodyGyro_X_Mean
fBodyGyro_Y_Mean
fBodyGyro_Z_Mean
fBodyGyro_X_SD
fBodyGyro_Y_SD
fBodyGyro_Z_SD
fBodyAccMag_Mean
fBodyAccMag_SD
fBodyBodyAccJerkMag_Mean
fBodyBodyAccJerkMag_SD
fBodyBodyGyroMag_Mean
fBodyBodyGyroMag_SD
fBodyBodyGyroJerkMag_Mean
fBodyBodyGyroJerkMag_SD

The feature variables for each record in the tidy data set represent the average of each variable for each subject and activity performed.