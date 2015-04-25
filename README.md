# GettingDataProject

This project was created to "tidy up" the data from this project: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Date created : 4/25/2015
Author : Amanda Molling
## Included:
     * I have included the following files: 
        *source data : UCI HAR folder data:
           I have used in my data sets:
            * the activity_labels file
            * The Y_train / Y_test files -- This gave me the number corresponding to the each activity for each record.
            * The X_test / X_train -- These are the measured/analyzed data given by UCI
            * The subject files which connected each record with the the participant iD
        * A codebook to give a clearer idea of how the variables relate to the study.
        * The R code used to process the data : run_analysis.R
        * My generated data file: agro_data.txt
            This data contains the means and standard deviations for all the variables, for each of the 
            participants, for each of the activity types. They are grouped first by participant, 
            and then by activity type. This grouping was done with aggregate function.
            
## Processing information:
      The data was processed by downloading, unzipping, and manually reading each necessary file into R. Then the test and train data were 
      merged with their respective participant id labels and activity values for each observation. After that, both the test and train data
      were spliced to only contain those values measured by the reseachers that represented a mean or standard deviation. These two data sets
      were merged together using rbind. Finally, as per step 5, the data was agreggated so that the mean for each participant for 
      each activity type was easily seen.
### The intended process steps were given by the instructor, Jeff Leek:
         You should create one R script called run_analysis.R that does the following. 
          1. Merges the training and the test sets to create one data set.
          2. Extracts only the measurements on the mean and standard deviation for each measurement. 
          3. Uses descriptive activity names to name the activities in the data set
          4. Appropriately labels the data set with descriptive variable names. 
          5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
## Reading the agro_data:
    In order to read the data, I recommend reading in the data in RStudio, using read.table(agro_table, header = TRUE) with the normal defaults. 
    You will see the data header:
      1. physicalactivitygroup
      2. participantid
      3. timedomainbodyaccerlaerationmeanxaxis
      4.....
      79.. frequencydomainbodygyroscopejerkmagnitudemean
      
      
      
