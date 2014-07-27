# reads the several part files that compose
# train and test data and merges them together
# assigning activity and feature labels
prepare_data <- function (option) {
  
  # read activity and feature labels
  labels <- read.table("activity_labels.txt", header=FALSE, 
                       sep=" ", stringsAsFactors=FALSE)
  features <- read.table("features.txt", header=FALSE, 
                       sep=" ", stringsAsFactors=FALSE)
  
  # read x_data, y_data and subject data
  if (option == "test") {
    x_data <- read.table("test//X_test.txt")
    y_data <- read.table("test//y_test.txt") 
    subject_data <- read.table("test//subject_test.txt")
  } else {
    x_data <- read.table("train//X_train.txt")
    y_data <- read.table("train//y_train.txt")
    subject_data <- read.table("train//subject_train.txt") }
  
  # convert y_data to more 'readable' labels
  y_data <- sapply(y_data, function(x) labels[x, 2])
  
  # assign feature names to x's columns
  colnames(x_data) <- features$V2
  
  # bind x_data and y_data data together
  # and rename new column with "Activity" label
  data <- cbind(y_data, x_data)
  colnames(data)[1] <- "Activity"
  data$Activity <- as.character(data$Activity)
  
  # bind subject data
  # and rename new column with "Subject" label
  data <- cbind(subject_data, data)
  colnames(data)[1] <- "Subject"
  
  return(data)
}
