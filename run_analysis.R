source("prepare_data.R")
source("extract_and_tidy_data.R")


# prepare test and train data
test_data <- prepare_data("test")
train_data <- prepare_data("train")
  
# merge test and train data
data <- rbind(test_data, train_data)

# free up memory
rm(test_data, train_data)

# extract only mean and standard deviation columns
# also tidy up variable names
data <- extract_and_tidy_data(data)

# calculate averages for each activity and subject
results <- aggregate(data[3:68], 
                     by=list(Subject=data$Subject, 
                             Activity=data$Activity), 
                     FUN=mean, na.rm=TRUE)

# print out results to a txt file
write.table(results, file="results.txt", sep=",", row.names=FALSE)
