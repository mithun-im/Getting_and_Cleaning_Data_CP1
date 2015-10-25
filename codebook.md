About the Dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


Testdata_x, Testdata_y and Testdata_subject denote the test datasets. The required mean and std of all observations
Traindata_x, Traindata_y and Traindata_subject denote the train datasets.

<<<<<<< HEAD
mean_std_features 

Testdata is used to merge Testdata_x, Testdata_y and Testdata_subject
Traindata is used to merge Traindata_x, Traindata_y and Traindata_subject
Finally the Testdata and Traindata are merged to form Expt_data. 
=======
Testdata is used to merge Testdata_x, Testdata_y and Testdata_subject
Traindata is used to merge Traindata_x, Traindata_y and Traindata_subject
Finally the Testdata and Traindata are merged to form Expt_data. 
>>>>>>> 5144e314217949f690cc689f52af5211df0a799c
