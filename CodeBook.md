# CODEBOOK

## PROJECT DESCRIPTION

This codebook contains the detail information about the tidy dataset created for the "Getting and Cleaning Data Course Project."

For more complete information on the original study, please refer to the source info in the README file.

## DATA SOURCE

The raw data was sourced from:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The dataset contains Human Activity Recognition (HAR) observations of 30 subjects performing 6 different normal activities while carrying a waist-mounted smartphone with embedded inertial sensors.  The subjects were divided into test and training groups.

The observations included total acceleration and angular velocity across 3 (x, y, z) axes.  From that, a variety of other variables (body acceleration, jerk) and statistics (mean, std dev) were calculated, for a total of 561 variables (features).  

For more detailed information on the study and the sensor observations, please refer to the *readme.txt* and *features_info.txt* files that are part of the dataset.

The data files used for this analysis are:
* `X_test.txt` is a fixed-width file with 2947 observations (rows) and 561 variables (columns).
* `X_train.txt` is a fixed-width file with 7352 observations (rows) and 561 variables (columns).
* `Y_test.txt` contains the activity codes corresponding to each of the 2947 test observations.
* `Y_train.txt` contains the activity codes corresponding to each of the 7352 training observations.
* `Subject_test.txt` contains the subject numbers corresponding to each of the 2947 test observations.
* `Subject_train.txt` contains the subject numbers corresponding to each of the 7352 training observations.
* `Features.txt` contains the list of 561 variables names for all of the observations.
* `Activity_labels.txt` contains the names and codes of the observed activities.

(Please note:  the original data in the Inertial folder was not used.)

## TRANSFORMATION

From the raw data, the tidy data was created using the `run_analysis.r` script.

The script downloads the raw data, reads and combines the test and training datasets, appends subject number and activities, and creates valid, descriptive labels for all items.  A subset of the data with mean and standard deviation data is then summarized by activity and subject.

A step-by-step description of the process is in the accompanying ReadMe file, as well as in the comments included in the script.

## TIDY FILE

The final product of the script is a tidy data table with 180 rows and 82 columns (sometimes referred to as "wide" format), which is downloaded to the following file: `final tidy dataset.csv`.   
The table is tidy because it contains one observation in each row, one variable in each column, and descriptive and properly formatted labels.

### VARIABLES IN THE TIDY DATASET

* subject  = subject number (1-30) from the original study

* activity = one of 6 activities observed

.walking
.walking.upstairs
.walking.downstairs
.sitting
.standing
.laying 

* timeBodyAcc.mean.X = average (arithmetic mean) of the time domain signal of the body acceleration mean along the x-axis in radians / second
* timeBodyAcc.mean.Y = average (arithmetic mean) of the time domain signal of the body acceleration mean along the y-axis in radians / second
* timeBodyAcc.mean.Z = average (arithmetic mean) of the time domain signal of the body acceleration mean along the z-axis in radians / second
* timeGravityAcc.mean.X = average (arithmetic mean) of the time domain signal of the gravity acceleration mean along the x-axis in radians / second
* timeGravityAcc.mean.Y = average (arithmetic mean) of the time domain signal of the gravity acceleration mean along the y-axis in radians / second
* timeGravityAcc.mean.Z = average (arithmetic mean) of the time domain signal of the gravity acceleration mean along the z-axis in radians / second
* timeBodyAccJerk.mean.X = average (arithmetic mean) of the time domain signal of the body acceleration jerk mean along the x-axis in radians / second
* timeBodyAccJerk.mean.Y = average (arithmetic mean) of the time domain signal of the body acceleration jerk mean along the y-axis in radians / second
* timeBodyAccJerk.mean.Z = average (arithmetic mean) of the time domain signal of the body acceleration jerk mean along the z-axis in radians / second
* timeBodyGyro.mean.X = average (arithmetic mean) of the time domain signal of the body angular velocity mean along the x-axis in standard gravity units g
* timeBodyGyro.mean.Y = average (arithmetic mean) of the time domain signal of the body angular velocity mean along the y-axis in standard gravity units g
* timeBodyGyro.mean.Z = average (arithmetic mean) of the time domain signal of the body angular velocity mean along the z-axis in standard gravity units g
* timeBodyGyroJerk.mean.X = average (arithmetic mean) of the time domain signal of the body angular velocity jerk mean along the x-axis in standard gravity units g
* timeBodyGyroJerk.mean.Y = average (arithmetic mean) of the time domain signal of the body angular velocity jerk mean along the y-axis in standard gravity units g
* timeBodyGyroJerk.mean.Z = average (arithmetic mean) of the time domain signal of the body angular velocity jerk mean along the z-axis in standard gravity units g
* timeBodyAccMag.mean = average (arithmetic mean) of the time domain signal of the body acceleration magnitude mean in radians / second
* timeGravityAccMag.mean = average (arithmetic mean) of the time domain signal of the gravity acceleration magnitude mean in radians / second
* timeBodyAccJerkMag.mean = average (arithmetic mean) of the time domain signal of the body acceleration jerk magnitude mean in radians / second
* timeBodyGyroMag.mean = average (arithmetic mean) of the time domain signal of the body angular velocity magnitude mean in standard gravity units g
* timeBodyGyroJerkMag.mean = average (arithmetic mean) of the time domain signal of the body angular velocity jerk magnitude mean in standard gravity units g
* freqBodyAcc.mean.X = average (arithmetic mean) of the frequency domain signal of the body acceleration mean along the x-axis in radians / second
* freqBodyAcc.mean.Y = average (arithmetic mean) of the frequency domain signal of the body acceleration mean along the y-axis in radians / second
* freqBodyAcc.mean.Z = average (arithmetic mean) of the frequency domain signal of the body acceleration mean along the z-axis in radians / second
* freqBodyAcc.meanFreq.X = average (arithmetic mean) of the frequency domain signal of the body acceleration mean frequency along the x-axis in radians / second
* freqBodyAcc.meanFreq.Y = average (arithmetic mean) of the frequency domain signal of the body acceleration mean frequency along the y-axis in radians / second
* freqBodyAcc.meanFreq.Z = average (arithmetic mean) of the frequency domain signal of the body acceleration mean frequency along the z-axis in radians / second
* freqBodyAccJerk.mean.X = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk mean along the x-axis in radians / second
* freqBodyAccJerk.mean.Y = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk mean along the y-axis in radians / second
* freqBodyAccJerk.mean.Z = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk mean along the z-axis in radians / second
* freqBodyAccJerk.meanFreq.X = average (arithmetic mean) of the frequency domain signal of the body acceleration mean frequency along the x-axis in radians / second
* freqBodyAccJerk.meanFreq.Y = average (arithmetic mean) of the frequency domain signal of the body acceleration mean frequency along the y-axis in radians / second
* freqBodyAccJerk.meanFreq.Z = average (arithmetic mean) of the frequency domain signal of the body acceleration mean frequency along the z-axis in radians / second
* freqBodyGyro.mean.X = average (arithmetic mean) of the frequency domain signal of the body angular velocity mean along the x-axis in standard gravity units g
* freqBodyGyro.mean.Y = average (arithmetic mean) of the frequency domain signal of the body angular velocity mean along the y-axis in standard gravity units g
* freqBodyGyro.mean.Z = average (arithmetic mean) of the frequency domain signal of the body angular velocity mean along the z-axis in standard gravity units g
* freqBodyGyro.meanFreq.X = average (arithmetic mean) of the frequency domain signal of the body angular velocity mean frequency along the x-axis in standard gravity units g
* freqBodyGyro.meanFreq.Y = average (arithmetic mean) of the frequency domain signal of the body angular velocity mean frequency along the y-axis in standard gravity units g
* freqBodyGyro.meanFreq.Z = average (arithmetic mean) of the frequency domain signal of the body angular velocity mean frequency along the z-axis in standard gravity units g
* freqBodyAccMag.mean = average (arithmetic mean) of the frequency domain signal of the body acceleration magnitude mean in radians / second
* freqBodyAccMag.meanFreq = average (arithmetic mean) of the frequency domain signal of the body acceleration magnitude mean frequency in radians / second
* freqBodyBodyAccJerkMag.mean = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk magnitude mean in radians / second
* freqBodyBodyAccJerkMag.meanFreq = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk magnitude mean frequency in radians / second
* freqBodyBodyGyroMag.mean = average (arithmetic mean) of the frequency domain signal of the body angular velocity magnitude mean in standard gravity units g
* freqBodyBodyGyroMag.meanFreq = average (arithmetic mean) of the frequency domain signal of the body angular velocity magnitude mean frequency in standard gravity units g
* freqBodyBodyGyroJerkMag.mean = average (arithmetic mean) of the frequency domain signal of the body angular velocity jerk magnitude mean in standard gravity units g
* freqBodyBodyGyroJerkMag.meanFreq = average (arithmetic mean) of the frequency domain signal of the body angular velocity jerk magnitude mean frequency in standard gravity units g
* timeBodyAcc.std.X = average (arithmetic mean) of the time domain signal of the body acceleration standard deviation along the x-axis in radians / second
* timeBodyAcc.std.Y = average (arithmetic mean) of the time domain signal of the body acceleration standard deviation along the y-axis in radians / second
* timeBodyAcc.std.Z = average (arithmetic mean) of the time domain signal of the body acceleration standard deviation along the z-axis in radians / second
* timeGravityAcc.std.X = average (arithmetic mean) of the time domain signal of the gravity acceleration standard deviation along the x-axis in radians / second
* timeGravityAcc.std.Y = average (arithmetic mean) of the time domain signal of the gravity acceleration standard deviation along the y-axis in radians / second
* timeGravityAcc.std.Z = average (arithmetic mean) of the time domain signal of the gravity acceleration standard deviation along the z-axis in radians / second
* timeBodyAccJerk.std.X = average (arithmetic mean) of the time domain signal of the body acceleration jerk standard deviation along the x-axis in radians / second
* timeBodyAccJerk.std.Y = average (arithmetic mean) of the time domain signal of the body acceleration jerk standard deviation along the y-axis in radians / second
* timeBodyAccJerk.std.Z = average (arithmetic mean) of the time domain signal of the body acceleration jerk standard deviation along the z-axis in radians / second
* timeBodyGyro.std.X = average (arithmetic mean) of the time domain signal of the body angular velocity standard deviation along the x-axis in standard gravity units g
* timeBodyGyro.std.Y = average (arithmetic mean) of the time domain signal of the body angular velocity standard deviation along the y-axis in standard gravity units g
* timeBodyGyro.std.Z = average (arithmetic mean) of the time domain signal of the body angular velocity standard deviation along the z-axis in standard gravity units g
* timeBodyGyroJerk.std.X = average (arithmetic mean) of the time domain signal of the body angular velocity jerk standard deviation along the x-axis in standard gravity units g
* timeBodyGyroJerk.std.Y = average (arithmetic mean) of the time domain signal of the body angular velocity jerk standard deviation along the y-axis in standard gravity units g
* timeBodyGyroJerk.std.Z = average (arithmetic mean) of the time domain signal of the body angular velocity jerk standard deviation along the z-axis in standard gravity units g
* timeBodyAccMag.std = average (arithmetic mean) of the time domain signal of the body acceleration magnitude standard deviation in radians / second
* timeGravityAccMag.std = average (arithmetic mean) of the time domain signal of the gravity acceleration magnitude standard deviation in radians / second
* timeBodyAccJerkMag.std = average (arithmetic mean) of the time domain signal of the body acceleration jerk magnitude standard deviation in radians / second
* timeBodyGyroMag.std = average (arithmetic mean) of the time domain signal of the body angular velocity magnitude standard deviation in standard gravity units g
* timeBodyGyroJerkMag.std = average (arithmetic mean) of the time domain signal of the body angular velocity jerk magnitude standard deviation in standard gravity units g
* freqBodyAcc.std.X = average (arithmetic mean) of the frequency domain signal of the body acceleration standard deviation along the x-axis in radians / second
* freqBodyAcc.std.Y = average (arithmetic mean) of the frequency domain signal of the body acceleration standard deviation along the y-axis in radians / second
* freqBodyAcc.std.Z = average (arithmetic mean) of the frequency domain signal of the body acceleration standard deviation along the z-axis in radians / second
* freqBodyAccJerk.std.X = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk standard deviation along the x-axis in radians / second
* freqBodyAccJerk.std.Y = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk standard deviation along the y-axis in radians / second
* freqBodyAccJerk.std.Z = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk standard deviation along the z-axis in radians / second
* freqBodyGyro.std.X = average (arithmetic mean) of the frequency domain signal of the body angular velocity standard deviation along the x-axis in standard gravity units g
* freqBodyGyro.std.Y = average (arithmetic mean) of the frequency domain signal of the body angular velocity standard deviation along the y-axis in standard gravity units g
* freqBodyGyro.std.Z = average (arithmetic mean) of the frequency domain signal of the body angular velocity standard deviation along the z-axis in standard gravity units g
* freqBodyAccMag.std = average (arithmetic mean) of the frequency domain signal of the body acceleration magnitude standard deviation in radians / second
* freqBodyBodyAccJerkMag.std = average (arithmetic mean) of the frequency domain signal of the body acceleration jerk magnitude standard deviation in radians / second
* freqBodyBodyGyroMag.std = average (arithmetic mean) of the frequency domain signal of the body angular velocity magnitude standard deviation in standard gravity units g
* freqBodyBodyGyroJerkMag.std = average (arithmetic mean) of the frequency domain signal of the body angular velocity jerk magnitude standard deviation in standard gravity units g

