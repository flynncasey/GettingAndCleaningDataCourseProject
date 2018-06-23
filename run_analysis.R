# run_analysis.R
#
# merges the training and test sets in the UCI HAR Dataset, extracts the mean and standard 
# deviations for the measurements of each variable, appropriately describes and labels the 
# data, and creates an independent tidy data set with the average of each variable for each 
# subject and activity performed.
#

# read in data
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")
test_set <- read.table("UCI HAR Dataset/test/X_test.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
train_set <- read.table("UCI HAR Dataset/train/X_train.txt")

# extract mean and standard deviation for each measurement
data_set <- rbind.data.frame(test_set,train_set)
tBodyAcc_X_Mean <- data_set[,1]
tBodyAcc_Y_Mean <- data_set[,2]
tBodyAcc_Z_Mean <- data_set[,3]
tBodyAcc_X_SD <- data_set[,4]
tBodyAcc_Y_SD <- data_set[,5]
tBodyAcc_Z_SD <- data_set[,6]
tGravityAcc_X_Mean <- data_set[,41]
tGravityAcc_Y_Mean <- data_set[,42]
tGravityAcc_Z_Mean <- data_set[,43]
tGravityAcc_X_SD <- data_set[,44]
tGravityAcc_Y_SD <- data_set[,45]
tGravityAcc_Z_SD <- data_set[,46]
tBodyAccJerk_X_Mean <- data_set[,81]
tBodyAccJerk_Y_Mean <- data_set[,82]
tBodyAccJerk_Z_Mean <- data_set[,83]
tBodyAccJerk_X_SD <- data_set[,84]
tBodyAccJerk_Y_SD <- data_set[,85]
tBodyAccJerk_Z_SD <- data_set[,86]
tBodyGyro_X_Mean <- data_set[,121]
tBodyGyro_Y_Mean <- data_set[,122]
tBodyGyro_Z_Mean <- data_set[,123]
tBodyGyro_X_SD <- data_set[,124]
tBodyGyro_Y_SD <- data_set[,125]
tBodyGyro_Z_SD <- data_set[,126]
tBodyGyroJerk_X_Mean <- data_set[,161]
tBodyGyroJerk_Y_Mean <- data_set[,162]
tBodyGyroJerk_Z_Mean <- data_set[,163]
tBodyGyroJerk_X_SD <- data_set[,164]
tBodyGyroJerk_Y_SD <- data_set[,165]
tBodyGyroJerk_Z_SD <- data_set[,166]
tBodyAccMag_Mean <- data_set[,201]
tBodyAccMag_SD <- data_set[,202]
tGravityAccMag_Mean <- data_set[,214]
tGravityAccMag_SD <- data_set[,215]
tBodyAccJerkMag_Mean <- data_set[,227]
tBodyAccJerkMag_SD <- data_set[,228]
tBodyGyroMag_Mean <- data_set[,240]
tBodyGyroMag_SD <- data_set[,241]
tBodyGyroJerkMag_Mean <- data_set[,253]
tBodyGyroJerkMag_SD <- data_set[,254]
fBodyAcc_X_Mean <- data_set[,266]
fBodyAcc_Y_Mean <- data_set[,267]
fBodyAcc_Z_Mean <- data_set[,268]
fBodyAcc_X_SD <- data_set[,269]
fBodyAcc_Y_SD <- data_set[,270]
fBodyAcc_Z_SD <- data_set[,271]
fBodyAccJerk_X_Mean <- data_set[,345]
fBodyAccJerk_Y_Mean <- data_set[,346]
fBodyAccJerk_Z_Mean <- data_set[,347]
fBodyAccJerk_X_SD <- data_set[,348]
fBodyAccJerk_Y_SD <- data_set[,349]
fBodyAccJerk_Z_SD <- data_set[,350]
fBodyGyro_X_Mean <- data_set[,424]
fBodyGyro_Y_Mean <- data_set[,425]
fBodyGyro_Z_Mean <- data_set[,426]
fBodyGyro_X_SD <- data_set[,427]
fBodyGyro_Y_SD <- data_set[,428]
fBodyGyro_Z_SD <- data_set[,429]
fBodyAccMag_Mean <- data_set[,503]
fBodyAccMag_SD <- data_set[,504]
fBodyBodyAccJerkMag_Mean <- data_set[,516]
fBodyBodyAccJerkMag_SD <-data_set[,517]
fBodyBodyGyroMag_Mean <- data_set[,529]
fBodyBodyGyroMag_SD <- data_set[,530]
fBodyBodyGyroJerkMag_Mean <- data_set[,542]
fBodyBodyGyroJerkMag_SD <- data_set[,543]

# merge data
subject <- rbind.data.frame(test_subjects,train_subjects)
activity <- rbind.data.frame(test_activity,train_activity)
data <- cbind.data.frame(subject,activity,tBodyAcc_X_Mean,tBodyAcc_Y_Mean,tBodyAcc_Z_Mean,
        tBodyAcc_X_SD,tBodyAcc_Y_SD,tBodyAcc_Z_SD,tGravityAcc_X_Mean,tGravityAcc_Y_Mean,
        tGravityAcc_Z_Mean,tGravityAcc_X_SD,tGravityAcc_Y_SD,tGravityAcc_Z_SD,
        tBodyAccJerk_X_Mean,tBodyAccJerk_Y_Mean,tBodyAccJerk_Z_Mean,tBodyAccJerk_X_SD,
        tBodyAccJerk_Y_SD,tBodyAccJerk_Z_SD,tBodyGyro_X_Mean,tBodyGyro_Y_Mean,
        tBodyGyro_Z_Mean,tBodyGyro_X_SD,tBodyGyro_Y_SD,tBodyGyro_Z_SD,tBodyGyroJerk_X_Mean,
        tBodyGyroJerk_Y_Mean,tBodyGyroJerk_Z_Mean,tBodyGyroJerk_X_SD,tBodyGyroJerk_Y_SD,
        tBodyGyroJerk_Z_SD,tBodyAccMag_Mean,tBodyAccMag_SD,tGravityAccMag_Mean,
        tGravityAccMag_SD,tBodyAccJerkMag_Mean,tBodyAccJerkMag_SD,tBodyGyroMag_Mean,
        tBodyGyroMag_SD,tBodyGyroJerkMag_Mean,tBodyGyroJerkMag_SD,fBodyAcc_X_Mean,
        fBodyAcc_Y_Mean,fBodyAcc_Z_Mean,fBodyAcc_X_SD,fBodyAcc_Y_SD,fBodyAcc_Z_SD,
        fBodyAccJerk_X_Mean,fBodyAccJerk_Y_Mean,fBodyAccJerk_Z_Mean,fBodyAccJerk_X_SD,
        fBodyAccJerk_Y_SD,fBodyAccJerk_Z_SD,fBodyGyro_X_Mean,fBodyGyro_Y_Mean,
        fBodyGyro_Z_Mean,fBodyGyro_X_SD,fBodyGyro_Y_SD,fBodyGyro_Z_SD,fBodyAccMag_Mean,
        fBodyAccMag_SD,fBodyBodyAccJerkMag_Mean,fBodyBodyAccJerkMag_SD,
        fBodyBodyGyroMag_Mean,fBodyBodyGyroMag_SD,fBodyBodyGyroJerkMag_Mean,
        fBodyBodyGyroJerkMag_SD)

# label data set with descriptive variable names
colnames(data) <- c('subject','activity','tBodyAcc_X_Mean','tBodyAcc_Y_Mean',
        'tBodyAcc_Z_Mean','tBodyAcc_X_SD','tBodyAcc_Y_SD','tBodyAcc_Z_SD','tGravityAcc_X_Mean',
        'tGravityAcc_Y_Mean','tGravityAcc_Z_Mean','tGravityAcc_X_SD','tGravityAcc_Y_SD',
        'tGravityAcc_Z_SD','tBodyAccJerk_X_Mean','tBodyAccJerk_Y_Mean','tBodyAccJerk_Z_Mean',
        'tBodyAccJerk_X_SD','tBodyAccJerk_Y_SD','tBodyAccJerk_Z_SD','tBodyGyro_X_Mean',
        'tBodyGyro_Y_Mean','tBodyGyro_Z_Mean','tBodyGyro_X_SD','tBodyGyro_Y_SD','tBodyGyro_Z_SD',
        'tBodyGyroJerk_X_Mean','tBodyGyroJerk_Y_Mean','tBodyGyroJerk_Z_Mean','tBodyGyroJerk_X_SD',
        'tBodyGyroJerk_Y_SD','tBodyGyroJerk_Z_SD','tBodyAccMag_Mean','tBodyAccMag_SD',
        'tGravityAccMag_Mean','tGravityAccMag_SD','tBodyAccJerkMag_Mean','tBodyAccJerkMag_SD',
        'tBodyGyroMag_Mean','tBodyGyroMag_SD','tBodyGyroJerkMag_Mean','tBodyGyroJerkMag_SD',
        'fBodyAcc_X_Mean','fBodyAcc_Y_Mean','fBodyAcc_Z_Mean','fBodyAcc_X_SD','fBodyAcc_Y_SD',
        'fBodyAcc_Z_SD','fBodyAccJerk_X_Mean','fBodyAccJerk_Y_Mean','fBodyAccJerk_Z_Mean',
        'fBodyAccJerk_X_SD','fBodyAccJerk_Y_SD','fBodyAccJerk_Z_SD','fBodyGyro_X_Mean',
        'fBodyGyro_Y_Mean','fBodyGyro_Z_Mean','fBodyGyro_X_SD','fBodyGyro_Y_SD','fBodyGyro_Z_SD',
        'fBodyAccMag_Mean','fBodyAccMag_SD','fBodyBodyAccJerkMag_Mean','fBodyBodyAccJerkMag_SD',
        'fBodyBodyGyroMag_Mean','fBodyBodyGyroMag_SD','fBodyBodyGyroJerkMag_Mean',
        'fBodyBodyGyroJerkMag_SD')

# apply descriptive activity names
data <- within.data.frame(data, activity <- factor(activity, labels = c('WALKING','WALKING UPSTAIRS',
        'WALKING DOWNSTAIRS','SITTING','STANDING','LAYING')))

# tidy data set
library(dplyr)
tidy_data <- arrange(data, subject, activity)
tidy_data <- group_by(tidy_data, subject, activity)
tidy_data <- summarise_each(tidy_data, funs(mean), tBodyAcc_X_Mean,tBodyAcc_Y_Mean,tBodyAcc_Z_Mean,
        tBodyAcc_X_SD,tBodyAcc_Y_SD,tBodyAcc_Z_SD,tGravityAcc_X_Mean,tGravityAcc_Y_Mean,
        tGravityAcc_Z_Mean,tGravityAcc_X_SD,tGravityAcc_Y_SD,tGravityAcc_Z_SD,tBodyAccJerk_X_Mean,
        tBodyAccJerk_Y_Mean,tBodyAccJerk_Z_Mean,tBodyAccJerk_X_SD,tBodyAccJerk_Y_SD,tBodyAccJerk_Z_SD,
        tBodyGyro_X_Mean,tBodyGyro_Y_Mean,tBodyGyro_Z_Mean,tBodyGyro_X_SD,tBodyGyro_Y_SD,tBodyGyro_Z_SD,
        tBodyGyroJerk_X_Mean,tBodyGyroJerk_Y_Mean,tBodyGyroJerk_Z_Mean,tBodyGyroJerk_X_SD,
        tBodyGyroJerk_Y_SD,tBodyGyroJerk_Z_SD,tBodyAccMag_Mean,tBodyAccMag_SD,tGravityAccMag_Mean,
        tGravityAccMag_SD,tBodyAccJerkMag_Mean,tBodyAccJerkMag_SD,tBodyGyroMag_Mean,tBodyGyroMag_SD,
        tBodyGyroJerkMag_Mean,tBodyGyroJerkMag_SD,fBodyAcc_X_Mean,fBodyAcc_Y_Mean,fBodyAcc_Z_Mean,
        fBodyAcc_X_SD,fBodyAcc_Y_SD,fBodyAcc_Z_SD,fBodyAccJerk_X_Mean,fBodyAccJerk_Y_Mean,
        fBodyAccJerk_Z_Mean,fBodyAccJerk_X_SD,fBodyAccJerk_Y_SD,fBodyAccJerk_Z_SD,fBodyGyro_X_Mean,
        fBodyGyro_Y_Mean,fBodyGyro_Z_Mean,fBodyGyro_X_SD,fBodyGyro_Y_SD,fBodyGyro_Z_SD,fBodyAccMag_Mean,
        fBodyAccMag_SD,fBodyBodyAccJerkMag_Mean,fBodyBodyAccJerkMag_SD,fBodyBodyGyroMag_Mean,
        fBodyBodyGyroMag_SD,fBodyBodyGyroJerkMag_Mean,fBodyBodyGyroJerkMag_SD)
tidy_data