act_lab                  <- read.table("activity_labels.txt")[,2]
features                 <- read.table("features.txt")[,2]

mean_std_features        <- grepl("mean|std", features)

Testdata_x               <- read.table("X_test.txt")
Testdata_y               <- read.table("y_test.txt")
Testdata_subject         <- read.table("subject_test.txt")

Traindata_x              <- read.table("X_train.txt")
Traindata_y              <- read.table("y_train.txt")
Traindata_subject        <- read.table("subject_train.txt")

names(Testdata_x)        = features
names(Traindata_x)       = features

Testdata_x               = Testdata_x[,mean_std_features]
Testdata_y[,2]           = act_lab[Testdata_y[,1]]
names(Testdata_y)        = c("Activity_ID", "Activity_Label")
names(Testdata_subject)  = "Subject"

Traindata_x              = Traindata_x[,mean_std_features]
Traindata_y[,2]          = act_lab[Traindata_y[,1]]
names(Traindata_y)       = c("Activity_ID", "Activity_Label")
names(Traindata_subject) = "Subject"

Testdata                 <- cbind(as.data.table(Testdata_subject), Testdata_y, Testdata_x)
Traindata                <- cbind(as.data.table(Traindata_subject), Traindata_y, Traindata_x)

Expt_data                = rbind(Testdata, Traindata)
id_labels                = c("Subject", "Activity_ID", "Activity_Label")
data_labels              = setdiff(colnames(Expt_data), id_labels)
melt_data                = melt(Expt_data, id = id_labels, measure.vars = data_labels)
tidy_data                = dcast(melt_data, Subject + Activity_Label ~ variable, mean)

write.table(tidy_data, file = "tidy_data.txt",row.name = FALSE)