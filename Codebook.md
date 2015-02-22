##Codebook for Getting and Cleaning Data Course Project
# February 2015

This course project uses data from the UCI machine learning repository (see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for detail on the data set)<br>
<br>
Multiple domain signals were captured and the variable names imply the detail:
<ul>
<li>The time domain signals (prefix 't' to denote time);</li>
<li>The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ);</li>
<li>The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag) <em>(Note the 'f' to indicate frequency domain signals);</em></li>
<li>A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)</li>
</ul>
These signals were used to estimate variables of the feature vector for each pattern.  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.<br>
<br>
The set of variables that were estimated from these signals are:
<ul>
<li>mean(): Mean value</li>
<li>std(): Standard deviation</li>
</ul>

The complete list of variables of each feature vector is available in 'features.txt' are detailed below.  Note the variable names differ from the UCI data set and course data set due to enforcing variable name uniqueness in the R analysis.
<ul>
<li>Subject: numeric. Values 1-30.  The unique identifier for the subject person performing the test/train</li>
<li>Activity: text.  The name of the activity.  Factor with 6 values:<ul>
<li>WALKING</li>
<li>WALKING_UPSTAIRS</li>
<li>WALKING_DOWNSTAIRS</li>
<li>SITTING</li>
<li>STANDING</li>
<li>LAYING</li>
</ul></li>
<li>tBodyAcc.mean...X: numeric. The mean time of body acceleration along the X axis.</li>
<li>tBodyAcc.mean...Y: numeric. The mean time of body acceleration along the Y axis.</li>
<li>tBodyAcc.mean...Z: numeric. The mean time of body acceleration along the Z axis.</li>
<li>tGravityAcc.mean...X: numeric.  The mean time of gravity acceleration along the X axis.</li>
<li>tGravityAcc.mean...Y: numeric.  The mean time of gravity acceleration along the Y axis.</li>
<li>tGravityAcc.mean...Z: numeric.  The mean time of gravity acceleration along the Z axis.</li>
<li>tBodyAccJerk.mean...X: numeric.  The mean time of body acceleration in jerk movement along the X axis.</li>
<li>tBodyAccJerk.mean...Y: numeric.  The mean time of body acceleration in jerk movement along the Y axis.</li>
<li>tBodyAccJerk.mean...Z: numeric.  The mean time of body acceleration in jerk movement along the Z axis.</li>
<li>tBodyGyro.mean...X: numeric.  The mean time value of the body movement measured by the gyroscope along the X axis.</li>
<li>tBodyGyro.mean...Y: numeric.  The mean time value of the body movement measured by the gyroscope along the Y axis.</li>
<li>tBodyGyro.mean...Z: numeric.  The mean time value of the body movement measured by the gyroscope along the Z axis.</li>
<li>tBodyGyroJerk.mean...X: numeric.  The mean time value of the body jerk movement measured by the gyroscope along the X axis.</li>
<li>tBodyGyroJerk.mean...Y: numeric.  The mean time value of the body jerk movement measured by the gyroscope along the Y axis.</li>
<li>tBodyGyroJerk.mean...Z: numeric.  The mean time value of the body jerk movement measured by the gyroscope along the Z axis.</li>
<li>tBodyAccMag.mean..: numeric.  The mean time magnitude of body acceleration</li>
<li>tGravityAccMag.mean..: numeric.  The mean time magnitude of gravity acceleration</li>
<li>tBodyAccJerkMag.mean..: numeric.  The mean time magnitude of body jerk movement</li>
<li>tBodyGyroMag.mean..: numeric.  The mean time magnitude of body movement measured by gyroscope</li>
<li>tBodyGyroJerkMag.mean..: numeric.  The mean time magnitude of body movement measured by both accelerometer and gyroscope</li>
<li>fBodyAcc.mean...X: numeric.  The mean value of body movement along the X axis measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyAcc.mean...Y: numeric.  The mean value of body movement along the Y axis measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyAcc.mean...Z: numeric.  The mean value of body movement along the Z axis measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyAcc.meanFreq...X: : numeric.  The mean frequency value of body movement along the X axis measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyAcc.meanFreq...Y: numeric.  The mean frequency value of body movement along the Y axis measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyAcc.meanFreq...Z: numeric.  The mean frequency value of body movement along the Z axis measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyAccJerk.mean...X: numeric.  The mean value of body jerk movement along the X axis measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyAccJerk.mean...Y: numeric.  The mean value of body jerk movement along the Y axis after the fast fourier transform was applied.</li>
<li>fBodyAccJerk.mean...Z: numeric.  The mean value of body jerk movement along the Z axis after the fast fourier transform was applied.</li>
<li>fBodyAccJerk.meanFreq...X: numeric.  The mean value of the frequency of body jerk movement along the X axis after the fast fourier transform was applied.</li>
<li>fBodyAccJerk.meanFreq...Y: numeric.  The mean value of the frequency of body jerk movement along the Y axis after the fast fourier transform was applied.</li>
<li>fBodyAccJerk.meanFreq...Z: numeric.  The mean value of the frequency of body jerk movement along the Z axis after the fast fourier transform was applied.</li>
<li>fBodyGyro.mean...X: numeric.  The mean value of body movement along the X axis measured by the gyroscope and after the fast fourier transform was applied.</li>
<li>fBodyGyro.mean...Y: numeric.  The mean value of body movement along the Y axis measured by the gyroscope and after the fast fourier transform was applied.</li>
<li>fBodyGyro.mean...Z: numeric.  The mean value of body movement along the Z axis measured by the gyroscope and after the fast fourier transform was applied.</li>
<li>fBodyGyro.meanFreq...X: numeric.  The mean value of the frequency of body movement along the X axis measured by the gyroscope and after the fast fourier transform was applied.</li>
<li>fBodyGyro.meanFreq...Y: numeric.  The mean value of the frequency of body movement along the Y axis measured by the gyroscope and after the fast fourier transform was applied.</li>
<li>fBodyGyro.meanFreq...Z: numeric.  The mean value of the frequency of body movement along the Z axis measured by the gyroscope and after the fast fourier transform was applied.</li>
<li>fBodyAccMag.mean..: numeric.  The mean value of the magnitude of body movement after the fast fourier transform was applied.</li>
<li>fBodyAccMag.meanFreq..: numeric.  The mean frequency value of the magnitude of body movement after the fast fourier transform was applied.</li>
<li>fBodyBodyAccJerkMag.mean..: numeric.  The mean value of body jerk magnitude as measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyBodyAccJerkMag.meanFreq..: numeric.  The mean frequency value of body jerk magnitude as measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyBodyGyroMag.mean..: numeric.  The mean value of body movement magnitude as measured by the accelerometer after the fast fourier transform was applied.</li>
<li>fBodyBodyGyroMag.meanFreq..: numeric.  The mean value of body movement magnitude as measured by the gyroscope after the fast fourier transform was applied.</li>
<li>fBodyBodyGyroJerkMag.mean..: numeric.  The mean value of body jerk magnitude after the fast fourier transform was applied.</li>