# Author: Hui-Heng Lin, PhD. on 20th Jan. 2021

# suppose that you have multiple confusion matrices. Put their values into a matrix, following specific order of true negative, false positive, false negative, and then finally the true positive
# example
ftp<- matrix(data = c(83,8,21,70, # The order of values is true negative, false positive, false negative, and then finally the true positive
                      82,9,22,69,
                      81,10,22,69,  
                      83,8,22,69),  nrow = 9, ncol=4, byrow= T); #  Don't forgot the byrow=T arugument. Or the value orders will be wrong.


# compute the 
rate<-ftp/91 # compute the rates, see results output below:

rate



# It is said that the AUC (area under curve) value = 0.5 - false postive rate/2 + true positive rate/2. Then we have a loop for calculating the AUCs of each model:
for (i in 1:4){ print(0.5 - rate[i,2]/2 + rate[i, 4]/2); } 
