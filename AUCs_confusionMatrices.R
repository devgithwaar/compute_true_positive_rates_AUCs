# Author: Hui-Heng Lin, PhD. on 20th Jan. 2021

# Suppose that you have multiple confusion matrices. Put their values into a matrix, following specific order of true negative, false positive, false negative, and then finally the true positive
# Example
ftp<- matrix(data = c(83,8,21,70, # The order of values is true negative, false positive, false negative, and then finally the true positive
                      82,9,22,69,
                      81,10,22,69,  
                      83,8,22,69),  nrow = 9, ncol=4, byrow= T); #  Don't forgot the byrow=T arugument. Or the value orders will be wrong.


# Compute the rates of true positive, true negative, false positive and false negative from the confusion matrix 
# Firstly, the true positive rate.
tpr1 <- ftp[1,4]/(ftp[1,4] + ftp[1,3]) # true positive rate = the number of true positive instances / number of all the positive instances = the number of true positive instances / (number of true positive instances + number of false negative instances)


# Can use loop to calculate if multiple calculations of true positive rate are required.
for(i in 1:j){ print(paste("the true positive rate of instance number ", i, "is : ", ftp[i,4]/(ftp[i,4]+ftp[i,3]))} # j is the number of your calculation instance


                     
                     
                     
# Compute the rates of true negative.  True negative rate = the number of true negative instances / number of all the negative instances = the number of true negative instances / (number of true negative instances + number of false positive instances)
tnr1 <- ftp[1,1]/(ftp[1,1] + ftp[1,2])  

# Can use loop to calculate if multiple calculations of true negative rate are required.
for(i in 1:j) { print(paste("the true negative rate of instance number ", i, "is : ", ftp[i,1] / (ftp[i,1] + ftp[i,2] ))} # j is the number of your calculation instance


                     
                     
                     
# Compute the rates of false negative.  False negative rate = the number of false negative instances / number of all the negative instances = the number of false negative instances / (number of false negative instances + number of true negative instances)
fnr1 <- ftp[1,3]/ (ftp[1,3] + ftp[1,1])  

# Can use loop to calculate if multiple calculations of false negative rate are required.
for(i in 1:j) { print(paste("the false negative rate of instance number ", i, "is : ", ftp[i,3]/(ftp[i,3]+ftp[i,1]))} # j is the number of your calculation instance
 
                     
                     
                     

# Compute the rates of false positive.  False positive rate = the number of false positive instances / number of all the positive instances = the number of false positive instances / (number of true positive instances + number of false positive instances)
fpr1 <- ftp[1,2]/(ftp[1,2]+ftp[1,4])  

# Can use loop to calculate if multiple calculations of false positive rate are required.
for(i in 1:j){ print(paste("the false positive rate of instance number ", i, "is : ", ftp[i,1]/(ftp[i,1]+ftp[i,2]))} # j is the number of your calculation instance

                     
                    

# It is said that the AUC (area under curve) value = 0.5 - false postive rate/2 + true positive rate/2. 
# for instance # 1, calculating the AUC of model could be done via:
print(0.5 - fpr1/2 + tpr1/2); 
# or 
print(0.5 - ftp[1,2]/((ftp[1,2]+ftp[1,4])*2) + ftp[1,4]/((ftp[1,4] + ftp[1,3])*2)); 
                     
                     
                     
