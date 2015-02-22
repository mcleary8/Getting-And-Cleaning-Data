# Getting and Cleaning Data - Coursera, February 2015
This repo contains files for the Getting and Cleaning Data course via Coursera, part of the Data Science Specialization and offered by John's Hopkins University.

The run_analysis.R file executes several steps to read in the data provided for the project, combines the subject, activity and result data into a combined data frame, and filters to include only the median and standard deviation variables before preparing the final tidy data set that includes the average for each variable group by subject and activity.

More specifically, run_analysis.R completes the following steps: <ol>
<li>Read the features and activities from the corresponding .txt files, each into a dataframe;</li>
<li>Reads the training data - results, subjects, and labels;</li>
<li>Reads the test data - results, subjects, and labels;</li>
<li>Adds the subject and activity code to the training result data;</li>
<li>Adds the subject and activity code to the test result data;</li>
<li>Combines these training and test dataframs into a new dataframe, all_combo;</li>
<li>Assignes unique variable (column) names, as the data set included duplicates and illegal characters;</li>
<li>Updates the combined data frame to replace the activity code with a descriptive activity name;</li>
<li>Summarises the data as instructed - by Subject, Activity and the mean value of each variable;</li>
<li>Writes the output to a .txt file</li>
</ol>  

 