This repository contains a script to make a smaller, summarized dataset from the text files downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To use the functions in the R script run_analysis.R, pass in the path to the directory .."\getdata-projectfiles-UCI HAR Dataset\UCI HAR Dataset" in the unzipped file structure on your local disk.

Example 1: if data folder "UCI HAR Dataset" and its subfolders is in your working directory
summary_table<-analyze()

Example 2:if data folder "UCI HAR Dataset" is elsewhere, provide path to it's parent directory.
dir<- "C:/Users/cstew-u/TidyDataProject/getdata-projectfiles-UCI HAR Dataset"
summary_table<-analyze(dir)

Script outline:

Assignment part 1, Putting the datasets together:
1.  Apply column names from features.txt to x_text and x_train
2.  Apply "SubjectID" and "ActivityID" as column names to subject_[test/train] and y_[test/train], respectively
3.  Append subject_[test/train] and y_[test/train] as new columns to x_[test/train],
	resulting in test and a train dataframes, appropriately labelled.
4.  Merge the test and train dataframes

Assignment part 2, Extract mean and std measurements
-Use observed pattern to create vectors of column indices to keep

Assignment part 3, apply descriptive activity names
-Use Activity_labels.txt to define levels for a new variable called activity and add to dataframe.

Assignment part 4, descriptive variable names
-Since features_info.txt sufficiently explains the labels in features.txt and the other variables were descriptively named as they were added (subjectID, ActivityID, Activity), this step just removes special characters "-", "(" and ")" from the variable names

Assignment part 5, create smaller summary dataset
-use dplyr table, group_by and summarise_each

