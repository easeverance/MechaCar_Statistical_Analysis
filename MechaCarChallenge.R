#Use the library() function to load the dplyr package
library(dplyr)
#Import and read in the csv file
Mecha_MPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#Perform linear regression using the lm()function 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, Mecha_MPG) 
#Use the summary()function to determine the p-value and r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, Mecha_MPG))

#Deliverabe 2
#Import and read in CSV file
coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#Create a total summary dataframe to summarize the PSI column
total_Summary <- coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance =var(PSI), SD = sd(PSI),Num_coils = n(),.groups='keep')
#Create a lot_summary dataframe on the PSI column
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance =var(PSI), SD = sd(PSI),Num_coils = n(),.groups='keep')

#Deliverable 3
#perform t test against all of PSI column
t.test(coil$PSI, mu=1500)

#3 additional t tests agains the individual lots 
lot1 <- subset(coil, Manufacturing_Lot =='Lot1')
lot2 <- subset(coil, Manufacturing_Lot =='Lot2')
lot3 <- subset(coil, Manufacturing_Lot =='Lot3')

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
