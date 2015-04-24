## Run analysis will:
## 1. get the data (I will comment this out
##   because I assume you have the data
##   saved in the working directory 
##   already).

## 2. Merge training and test sets
## 3. Name activities in data set
## 4. Label data variable name
## 5. Create data set containing 
##    average (each activity) for each variable 
##    and subject

##  unzip("getdata-projectfiles-UCI HAR Dataset.zip")
    list.files("UCI HAR Dataset")
  
  ## Read in variable names so that I can know what they are
    varNamesFile <- "UCI HAR Dataset//features.txt"
    varNames <- read.table(varNamesFile, stringsAsFactors = FALSE)
    ## The varnames comes in as the col number and then the
    ## name.
    ## I am converting to character type in order to 
    ## run grep on the variable names.
    charVarNames <- as.character(varNames[, 2])
    ## I am going to subset by the cols using std and mean
    colsNeeded <- grep("mean()|std()", charVarNames)
    ## I choose to 
    
  ## Test Data :
    X_test = "UCI HAR Dataset//test//X_test.txt"
    X_test <- read.table(X_test)
    ## colnames(X_test) = varNames
    subX_test <- X_test[, colsNeeded]
    
    Y_test = "UCI HAR Dataset//test//Y_test.txt"
    Y_test <- read.table(Y_test)
    X_test_ID <- "UCI HAR Dataset//test//subject_test.txt"
    X_test_ID <- read.table(X_test_ID)
    all_data_test <- cbind(X_test_ID,  Y_test, subX_test)
    # Creating a variable for whether the record is 
    ## test or train is not necessary, as it will get reduced
    ## in later parts anyway.
    
  ## Train Data:
    X_train = "UCI HAR Dataset//train//X_train.txt"
    X_train <- read.table(X_train)
   ## colnames(X_train) = varNames
    subX_train <- X_train[, colsNeeded]
    
    Y_train = "UCI HAR Dataset//train//Y_train.txt"
    Y_train <- read.table(Y_train)
    ## Train ID is the ~250 records ID so rep(1, 250), rep(2, 250), etc
    X_train_ID <- "UCI HAR Dataset//train//subject_train.txt"
    X_train_ID <- read.table(X_train_ID)
    
    all_data_train <- cbind(X_train_ID,  Y_train, subX_train)
    
  ## Merge the two data sets.
    all_data <- rbind(all_data_test, all_data_train)
    shortVars <- charVarNames[colsNeeded]
    names(all_data) <- c("participantID", "typeofphysicalactivity", shortVars)
    
  ## Clean up workspace:
    remove(X_test_ID, X_train, X_train_ID, Y_train, Y_test, all_data_test, all_data_train, subX_train, subX_test)
    remove(varNames, varNamesFile, X_test)
  
  ## Clean up variable names:
      names(all_data) <- gsub("-meanFreq\\(\\)", "weightedfrequencyaverage", names(all_data), )
      names(all_data) <- gsub("tBody", "timedomainbody", names(all_data),) 
      names(all_data) <- gsub("tgravity", "timedomainminusgravity", names(all_data), )
      names(all_data) <- gsub("Acc", "acceleration", names(all_data))
      names(all_data) <- gsub("fBody", "frequencydomainbody", names(all_data),)
      names(all_data) <- gsub("-X", "xaxis", names(all_data), )
      names(all_data) <- gsub("-Y", "yaxis", names(all_data), )
      names(all_data) <- gsub("-Z", "zaxis", names(all_data), )
      names(all_data) <- gsub("Gyro", "gyroscope", names(all_data), )
      names(all_data) <- gsub("Mag", "magnitude", names(all_data), )
      names(all_data) <- gsub("-mean\\(\\)", "mean", names(all_data), )
      names(all_data) <- gsub("-std\\(\\)", "standarddeviation", names(all_data), )
      names(all_data) <- gsub("\\(\\)", "", names(all_data),)
      names(all_data) <- gsub("bodyBody", "body", names(all_data), )
      
      names(all_data) <- gsub("-", "", names(all_data),)
      names(all_data) <- tolower(names(all_data))
 
  ## Add meaningful activity names:nrow(all_data)
      activLabels <- read.table("UCI HAR Dataset//activity_labels.txt")
      for (i in 1 : 10299){
        print (as.character(activLabels[all_data[i,2],2]))
        all_data[i, 2] <- as.character(activLabels[all_data[i, 2], 2])    
      }  
    
    
  ## Sorting the averages for each person for each activity 
    agro_data <- aggregate(all_data, by = list(as.factor(all_data[, 2]), as.numeric(all_data[, 1])), FUN = mean)
    
  ## This will return an integer vector with 
## the columns that contain mean or std.
##varNames[, 1] <- varNames[, 2]



## we will need to rbind the Y_test to the X_test






## before I combine I need to add a variable for whether the record 
## is a test or train record

## Before that, I will remove variables not required
## for this assignment.

## From manually looking at the data, I find the following mean 
## values that are relevant to me:

## Not sure yet...







## We don't actually need anything from the Inertial Signals folder so 
## the following should be ignored:
  ##X_body_acc_train = "UCI HAR Dataset//train//Inertial Signals//body_acc_x_train.txt"
  ##X_body_acc_train = read.table(X_body_acc_train)
  ## X_body_acc_train is 128 readings of X_body_acc_train for each participant
## This will not be read in because our assignments wants the mean
## This mean is alreay calculated in our X_train file.

## According to the readme, the Y-test/y-train links the data
## with which activity the record refers to.



