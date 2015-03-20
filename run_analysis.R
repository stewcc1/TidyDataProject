##read in test & train data
##pass patt to folder UCI HAR Dataset as downloaded from
##https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#### ASSIGNMENT PART 1 ####
analyze <- function(path=getwd()) {
datatest<-read.table(paste(path, "/UCI HAR Dataset/test/X_test.txt", sep=""))

##features contains the variable names for X_text & X_train
feat<-read.table(paste(path, "/UCI HAR Dataset/features.txt", sep=""))
nameVec<-as.vector(feat$V2, mode="character")
colnames(datatest)<-nameVec
datatrain<-read.table(paste(path, "/UCI HAR Dataset/train/X_train.txt", sep=""))
colnames(datatrain)<-nameVec

##Activity columns files Y_test & y_train
ydattest<-read.table(paste(path, "/UCI HAR Dataset/test/Y_test.txt", sep=""))
colnames(ydattest)<-"ActivityID"
ydattrain<-read.table(paste(path, "/UCI HAR Dataset/train/Y_train.txt", sep=""))
colnames(ydattrain)<-"ActivityID"

##Subject IDs from subject_test & subject_train
subjtest<-read.table(paste(path, "/UCI HAR Dataset/test/subject_test.txt", sep=""))
colnames(subjtest)<-"SubjectID"
subjtrain<-read.table(paste(path, "/UCI HAR Dataset/train/subject_train.txt", sep=""))
colnames(subjtrain)<-"SubjectID"

##3 data frames with 2947 obs - add subj and ydat as variables to data
dftest<-cbind(datatest, ydattest, subjtest)
##repeat for training data
dftrain<-cbind(datatrain, ydattrain, subjtrain)
#merge test & train
dfall<-rbind(dftest, dftrain)

#### ASSIGNMENT PART 2 ####
#variables to keep
keepVec1<-c(1:6, 41:46, 81:86, 121:126, 266:271, 345:350, 424:429)
keepVec2<-c(201,202,214,215,227,228,241,242,253,254,503,504,516,517,529,530,542,543,562,563) 
keepVec<-c(keepVec1, keepVec2)
dfSmall<-dfall[, keepVec]

#### ASSIGNMENT PART 3 ####
## use activity_labels.txt to as levels for factors
act<-read.table(paste(path, "/UCI HAR Dataset/activity_labels.txt", sep=""))
actVec<-as.vector(act$V2, mode='character')
Activity<-factor(x=as.character(dfSmall$ActivityID), levels=1:6, labels=actVec)
dfFinal<-cbind (dfSmall, Activity)

#### ASSIGNMENT PART 4 ####
##clean up variable names so we can refer to them with dplyr
names(dfFinal) <- gsub("-", "", names(dfFinal))
names(dfFinal) <- gsub(")", "", names(dfFinal))
names(dfFinal) <- gsub("\\(", "", names(dfFinal))

#### ASSIGNMENT PART 5 ####
##Summarize by subject and activity, calculate mean of all features
library(dplyr)
tblFinal<-tbl_df(dfFinal)
bySubjAct<-group_by(tblFinal, SubjectID, Activity)
tblSummary<-summarise_each(bySubjAct, funs(mean), -ActivityID)
return(tblSummary)
}