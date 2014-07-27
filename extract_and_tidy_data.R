# extracts only the subject, activity and the 
# mean and std. deviation columns from the dataframe
# tidies up variable names, removing characters not
# in the R etiquette
extract_and_tidy_data <- function (data) {
  
  # extract only mean and std. deviation columns
  # along with the activity and subject columns
  vars <- sort(c(c(1,2), 
                 grep("std()", names(data), fixed=TRUE), 
                 grep("mean()", names(data), fixed=TRUE)))
  
  data <- data[, vars]
  
  # tidy up variable names
  vars <- names(data)
  vars <- gsub("-", "_", vars)
  vars <- gsub("()", "", vars, fixed=TRUE)
  vars <- gsub("BodyBody", "Body", vars, fixed=TRUE)
  vars <- gsub("^t", "Time_", vars)
  vars <- gsub("^f", "Freq_", vars)
  names(data) <- vars
    
  return(data)
}
