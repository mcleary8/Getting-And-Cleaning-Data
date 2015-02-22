# Getting and Cleaning Data - Coursera, February 2015
This repo contains files for the Getting and Cleaning Data course via Coursera, part of the Data Science Specialization and offered by John's Hopkins University.

The run_analysis.R file executes several steps to read in the data provided for the project, combines the subject, activity and result data into a combined data frame, and filters to include only the median and standard deviation variables before preparing the final tidy data set that includes the average for each variable group by subject and activity.

More specifically, run_analysis.R completes the following steps: <ol>
<li>1. Read the features and activities from the corresponding .txt files, each into a dataframe;</li>
</ol>  
2. Reads the training data - results, subjects, and labels;
3. Reads the test data - results, subjects, and labels;
4. Adds the subject and activity code to the training result data;
5. Adds the subject and activity code to the test result data;
6. Combines these training and test dataframs into a new dataframe, all_combo;
7. Assignes unique variable (column) names, as the data set included duplicates and illegal characters;
8. Updates the combined data frame to replace the activity code with a descriptive activity name;
9. Summarises the data as instructed - by Subject, Activity and the mean value of each variable;
10. Writes the output to a .txt file
 

 