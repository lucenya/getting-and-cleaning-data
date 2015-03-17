##body Acc
bodyAcc.x.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//body_acc_x_test.txt",
                      sep="\t",header=FALSE,widths=16)
bodyAcc.y.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//body_acc_y_test.txt",
                         sep="\t",header=FALSE,widths=16)
bodyAcc.z.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//body_acc_z_test.txt",
                         sep="\t",header=FALSE,widths=16)

bodyAcc.x.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//body_acc_x_train.txt",
                         sep="\t",header=FALSE,widths=16)
bodyAcc.y.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//body_acc_y_train.txt",
                          sep="\t",header=FALSE,widths=16)
bodyAcc.z.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//body_acc_z_train.txt",
                          sep="\t",header=FALSE,widths=16)

length<-length(bodyAcc.x.test$V1)+length(bodyAcc.x.train$V1)
bodyAcc<-data.frame(x=numeric(length),y=numeric(length),z=numeric(length))

bodyAcc$x[1:length(bodyAcc.x.test$V1)]<-bodyAcc.x.test$V1
bodyAcc$x[(length(bodyAcc.x.test$V1)+1):length]<-bodyAcc.x.train$V1
bodyAcc$y[1:length(bodyAcc.y.test$V1)]<-bodyAcc.y.test$V1
bodyAcc$y[(length(bodyAcc.y.test$V1)+1):length]<-bodyAcc.y.train$V1
bodyAcc$z[1:length(bodyAcc.z.test$V1)]<-bodyAcc.z.test$V1
bodyAcc$z[(length(bodyAcc.z.test$V1)+1):length]<-bodyAcc.z.train$V1

write.table(bodyAcc,file="./bodyAcc.txt",row.name=FALSE)

##body gyro
bodyGyro.x.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//body_gyro_x_test.txt",
                          sep="\t",header=FALSE,widths=16)
bodyGyro.y.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//body_gyro_y_test.txt",
                          sep="\t",header=FALSE,widths=16)
bodyGyro.z.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//body_gyro_z_test.txt",
                          sep="\t",header=FALSE,widths=16)

bodyGyro.x.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//body_gyro_x_train.txt",
                           sep="\t",header=FALSE,widths=16)
bodyGyro.y.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//body_gyro_y_train.txt",
                           sep="\t",header=FALSE,widths=16)
bodyGyro.z.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//body_gyro_z_train.txt",
                           sep="\t",header=FALSE,widths=16)

length<-length(bodyGyro.x.test$V1)+length(bodyGyro.x.train$V1)
bodyGyro<-data.frame(x=numeric(length),y=numeric(length),z=numeric(length))

bodyGyro$x[1:length(bodyGyro.x.test$V1)]<-bodyGyro.x.test$V1
bodyGyro$x[(length(bodyGyro.x.test$V1)+1):length]<-bodyGyro.x.train$V1
bodyGyro$y[1:length(bodyGyro.y.test$V1)]<-bodyGyro.y.test$V1
bodyGyro$y[(length(bodyGyro.y.test$V1)+1):length]<-bodyGyro.y.train$V1
bodyGyro$z[1:length(bodyGyro.z.test$V1)]<-bodyGyro.z.test$V1
bodyGyro$z[(length(bodyGyro.z.test$V1)+1):length]<-bodyGyro.z.train$V1

write.table(bodyGyro,file="./bodyGyro.txt",row.name=FALSE)

##totol acc
totalAcc.x.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//total_acc_x_test.txt",
                          sep="\t",header=FALSE,widths=16)
totalAcc.y.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//total_acc_y_test.txt",
                          sep="\t",header=FALSE,widths=16)
totalAcc.z.test<-read.fwf(file=".//UCI HAR Dataset//test//Inertial Signals//total_acc_z_test.txt",
                          sep="\t",header=FALSE,widths=16)

totalAcc.x.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//total_acc_x_train.txt",
                           sep="\t",header=FALSE,widths=16)
totalAcc.y.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//total_acc_y_train.txt",
                           sep="\t",header=FALSE,widths=16)
totalAcc.z.train<-read.fwf(file=".//UCI HAR Dataset//train//Inertial Signals//total_acc_z_train.txt",
                           sep="\t",header=FALSE,widths=16)

length<-length(totalAcc.x.test$V1)+length(totalAcc.x.train$V1)
totalAcc<-data.frame(x=numeric(length),y=numeric(length),z=numeric(length))

totalAcc$x[1:length(totalAcc.x.test$V1)]<-totalAcc.x.test$V1
totalAcc$x[(length(totalAcc.x.test$V1)+1):length]<-totalAcc.x.train$V1
totalAcc$y[1:length(totalAcc.y.test$V1)]<-totalAcc.y.test$V1
totalAcc$y[(length(totalAcc.y.test$V1)+1):length]<-totalAcc.y.train$V1
totalAcc$z[1:length(totalAcc.z.test$V1)]<-totalAcc.z.test$V1
totalAcc$z[(length(totalAcc.z.test$V1)+1):length]<-totalAcc.z.train$V1

write.table(totalAcc,file="./totalAcc.txt",row.name=FALSE)

## the verage of data
bodyAccMean<-sapply(bodyAcc,mean)
bodyGyroMean<-sapply(bodyGyro,mean)
totalAccMean<-sapply(totalAcc,mean)

bodyAccSd<-sapply(bodyAcc,sd)
bodyGyroSd<-sapply(bodyGyro,sd)
totalAccSd<-sapply(totalAcc,sd)