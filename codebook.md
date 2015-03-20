Source Data, as downloaded 3/3/15:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip




The summarized tidy dataset has 68 variables named as follows.  All measurement variables are the mean of all observations for the participant and activity. 

 $ VARIABLE NAME           : TYPE / DESCRIPTION
 $ SubjectID               : int  / identifier of study participant
 $ Activity                : Factor w/ 6 levels / participants activity during measurement
 $ tBodyAccmeanX           : num  / mean of accelerometer body signal in X axis 
 $ tBodyAccmeanY           : num  / mean of accelerometer body signal in Y axis
 $ tBodyAccmeanZ           : num  / mean of accelerometer body signal in Z axis
 $ tBodyAccstdX            : num  / standard deviation of accelerometer body signal in X axis
 $ tBodyAccstdY            : num  / standard deviation of accelerometer body signal in Y axis
 $ tBodyAccstdZ            : num  / standard deviation of accelerometer body signal in Z axis
 $ tGravityAccmeanX        : num  / mean of accelerometer gravity signal in X axis 
 $ tGravityAccmeanY        : num  / mean of accelerometer gravity signal in Y axis
 $ tGravityAccmeanZ        : num  / mean of accelerometer gravity signal in Z axis
 $ tGravityAccstdX         : num  / standard deviation of accelerometer gravity signal in X axis
 $ tGravityAccstdY         : num  / standard deviation of accelerometer gravity signal in Y axis
 $ tGravityAccstdZ         : num  / standard deviation of accelerometer gravity signal in Z axis
 $ tBodyAccJerkmeanX       : num  / mean time derivative of accelerometer body signal in X axis
 $ tBodyAccJerkmeanY       : num  / mean time derivative of accelerometer body signal in Y axis
 $ tBodyAccJerkmeanZ       : num  / mean time derivative of accelerometer body signal in Z axis
 $ tBodyAccJerkstdX        : num  / standard deviation of time derivative of acc. body signal in X axis
 $ tBodyAccJerkstdY        : num  / standard deviation of time derivative of acc. body signal in Y axis
 $ tBodyAccJerkstdZ        : num  / standard deviation of time derivative of acc. body signal in Z axis
 $ tBodyGyromeanX          : num  / mean gyroscope body signal in X axis
 $ tBodyGyromeanY          : num  / mean gyroscope body signal in Y axis
 $ tBodyGyromeanZ          : num  / mean gyroscope body signal in Z axis
 $ tBodyGyrostdX           : num  / standard deviation of gyroscope body signal in X axis
 $ tBodyGyrostdY           : num  / standard deviation of gyroscope body signal in Y axis
 $ tBodyGyrostdZ           : num  / standard deviation of gyroscope body signal in Z axis
 $ tBodyGyroJerkmeanX      : num  / mean time derivative of gyroscope body signal in X axis
 $ tBodyGyroJerkmeanY      : num  / mean time derivative of gyroscope body signal in Y axis
 $ tBodyGyroJerkmeanZ      : num  / mean time derivative of gyroscope body signal in Z axis
 $ tBodyGyroJerkstdX       : num  / standard dev. of time derivative of gyroscope body signal in X axis
 $ tBodyGyroJerkstdY       : num  / standard dev. of time derivative of gyroscope body signal in Y axis
 $ tBodyGyroJerkstdZ       : num  / standard dev. of time derivative of gyroscope body signal in Z axis

 $ fBodyAccmeanX           : num  / Fast Fourier Transform of tBodyAccmeanX 
 $ fBodyAccmeanY           : num  / Fast Fourier Transform of tBodyAccmeanY
 $ fBodyAccmeanZ           : num  / Fast Fourier Transform of tBodyAccmeanZ
 $ fBodyAccstdX            : num  / Fast Fourier Transform of tBodyAccstdX
 $ fBodyAccstdY            : num  / Fast Fourier Transform of tBodyAccstdY
 $ fBodyAccstdZ            : num  / Fast Fourier Transform of tBodyAccstdZ
 $ fBodyAccJerkmeanX       : num  / Fast Fourier Transform of tBodyAccJerkmeanX
 $ fBodyAccJerkmeanY       : num  / Fast Fourier Transform of tBodyAccJerkmeanY
 $ fBodyAccJerkmeanZ       : num  / Fast Fourier Transform of tBodyAccJerkmeanZ
 $ fBodyAccJerkstdX        : num  / Fast Fourier Transform of tBodyAccJerkstdX
 $ fBodyAccJerkstdY        : num  / Fast Fourier Transform of tBodyAccJerkstdY
 $ fBodyAccJerkstdZ        : num  / Fast Fourier Transform of tBodyAccJerkstdZ
 $ fBodyGyromeanX          : num  / Fast Fourier Transform of tBodyGyromeanX 
 $ fBodyGyromeanY          : num  / Fast Fourier Transform of tBodyGyromeanY
 $ fBodyGyromeanZ          : num  / Fast Fourier Transform of tBodyGyromeanZ
 $ fBodyGyrostdX           : num  / Fast Fourier Transform of tBodyGyrostdX 
 $ fBodyGyrostdY           : num  / Fast Fourier Transform of tBodyGyrostdY
 $ fBodyGyrostdZ           : num  / Fast Fourier Transform of tBodyGyrostdZ

 $ tBodyAccMagmean         : num  / mean of accelerometer body signal magnitude 
 $ tBodyAccMagstd          : num  / standard deviation of accelerometer body signal magnitude
 $ tGravityAccMagmean      : num  / mean of accelerometer gravity signal magnitude 
 $ tGravityAccMagstd       : num  / standard deviation of accelerometer gravity signal magnitude 
 $ tBodyAccJerkMagmean     : num  / mean time derivative of accelerometer body signal magnitude
 $ tBodyAccJerkMagstd      : num  / standard deviation of time derivative of acc. body signal magnitude
 $ tBodyGyroMagmean        : num  / mean gyroscope body signal magnitude
 $ tBodyGyroMagstd         : num  / standard deviation of gyroscope body signal magnitude
 $ tBodyGyroJerkMagmean    : num  / mean time derivative of gyroscope body signal magnitude
 $ tBodyGyroJerkMagstd     : num  / standard dev. of time derivative of gyroscope body signal magnitude
 
 $ fBodyAccMagmean         : num  / Fast Fourier Transform of tBodyAccMagmean
 $ fBodyAccMagstd          : num  / Fast Fourier Transform of tBodyAccMagstd 
 $ fBodyBodyAccJerkMagmean : num  / Fast Fourier Transform of tBodyAccJerkMagmean
 $ fBodyBodyAccJerkMagstd  : num  / Fast Fourier Transform of tBodyAccJerkMagstd	
 $ fBodyBodyGyroMagmean    : num  / Fast Fourier Transform of tBodyGyroMagmean
 $ fBodyBodyGyroMagstd     : num  / Fast Fourier Transform of tBodyGyroMagstd
 $ fBodyBodyGyroJerkMagmean: num  / Fast Fourier Transform of tBodyGyroJerkMagmean
 $ fBodyBodyGyroJerkMagstd : num  / Fast Fourier Transform of tBodyGyroJerkMagstd

