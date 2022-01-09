# MechaCar_Statistical_Analysis

## Overview

AutosRUs' newest prototype, the MechaCar, is suffering from production troubles.  Upper management has called on the data analytics team to reveiw the production data for insights that may help the manufacturing team.  With this upper management is looking for the following

1. Perform multiple linear regression analysis to identify which variables int he dataset predict the mpg of MechaCar prototypes. 
2. Collect summary statistics on the PSI of the suspension coils from the different manufacturing lots
3. Run a t-test to determine if the manufacturing lots are statistically different from the mean population of mu=1500. 
4. Design a statistical study with summary interpretation comparing vehicle performanceof the MechaCar against vehicles from other manufacturers. 


## Linear Regression to Predict MPG

![MechCar_MPG Deliverable 1](https://user-images.githubusercontent.com/90973718/148649433-571e0364-4d0e-4382-bf38-714f0d49a2c6.png)

![MechaCar_MPG Deliverable 1_2](https://user-images.githubusercontent.com/90973718/148649443-82fc7049-9003-448b-8670-6e4758aee3a3.png)


1. In the summary output of the linear regression you can see the Pr(>|t|) value for each  coefficient.  This value shows the propability of the random amount of variance each coefficent provides to the model. The intercept, vehcile_legnth, ground_clearance and to some degree vehichle_weight are statistically unlikely to provide random amounts of variance.  In other words these coefficients have a significant impact on mpg.  

2.  The p value for the regression is 5.35e-11.  This is much lower than the assumed significance level of .05% leading one to beleive that there is sufficient evidence to regect the null hypothesis - meaning that the slope is not zero. 

3. The linear regression model has an R-squared of .7149 while the p value at 5.35 e-11 is significant. Meaning that it is a good prediction of mpg on MechaCar prototypes.  

## Summary Statistics on Suspension Coils

![Total_Summary Deliverable 2](https://user-images.githubusercontent.com/90973718/148649527-9f7bddee-8d4d-4853-815a-f703c350d5fb.png)

![Lot Summary Deliverable 2](https://user-images.githubusercontent.com/90973718/148649480-cc5ae897-213e-435c-8266-2601cd86fe9b.png)

The design specifications for the MechaCar suspension coils dictate that the variance must not exceed 100 PSI.  Looking at the created data frames you can see that the summary variance is 62.29356.  This is well within the allowable variance of 100 PSI.  However, this does not help when trying to uncover possible production issues.  Therefore, the data was broken up (subset) into the different manufacturing lots.  Here you can see that Lot 1 and Lot 2 have a variance of .9795918 and 7.4693878 respectively.  Lot 3 has a variance of 170.2861224, well above the allowable 100 PSI variance.  Lot 3 needs to be futher examined for additional issues in production. 

## T-Tests on Suspension Coils

Next the group has been tasked with performing t-test to determine if all of the manufacturing lots (in summary) or each lot individually are statisitcally different from the population mean (mu) of 1,500 PSI.  

![T Test against all PSI column Deliverable 3](https://user-images.githubusercontent.com/90973718/148649881-57e83229-68c0-4f33-9317-98b39802e39f.png)

You can see from the t-test performed on all of the lots that the true mean is 1,498.78 and a p value of .06028.  This p-value is above the acceptable value of .05.  Meaning that all three lots are statistically similar to the presumed population mean of 1,500 PSI. 

Individual lot analysis are below:
Lot 1:  the summary shows that the mean of the lot is 1,500 which matches exactly to the assumed mean of 1,500.  In addition the p-value is 1.  We would have to accept the null hypotheis that there is no statistical difference between the sample and the population mean. 

![Lot 1 T Test Deliverable 3](https://user-images.githubusercontent.com/90973718/148650189-4f5272d9-14d5-4166-aee8-ee225681ec9a.png)

Lot 2: The summary shows that the mean of the lot is 1,500.2 with a p-value of .6072.  Again based off of these figures we would have to accept the null hypothesis that there is no statistical difference between the sample and the population mean, 

![Lot 2 T Test Deliverable 3](https://user-images.githubusercontent.com/90973718/148650269-aa56c2b5-adb8-4719-97bc-412970211f1f.png)

Lot 3: The summary shows that the mean of the lot is 1,496.14 with a p value of .04168.  Here the p-value is less then the assumed normal value of .05, therfore leading one to believe that in this lot there is a statisitcal difference the sample and the population mean.  Again, as stated above it seems as if the production issues are stemming from lot 3. 

![Lot 3 T Test Deliverable 3](https://user-images.githubusercontent.com/90973718/148650575-5f80a162-2437-404a-a844-48ff5c679c46.png)


## Study Design: MechaCar vs Competition

Additional studies can be done to determine the likely hood of MechaCar being successful against their competition. Consumers are seeing vehicle prices in ranges that they have not seen before.  Therefore, in order to get consumers to purchase a specific vehicle then there are several key metrics that can be tested  that could possibly drive their descion. 

Car Price: Dependent Variable
Safety Ratings: Independent Variable
City/HWY fuel efficiency: Independent Variable
Maintenance cost: Independent Variable
MPG: Independent Variable
Resale Value: Independent Variable
Customer Satisfaction: Indepenedent Variable

Null Hypothesis (Ho) = MechaCar is priced comparable to similar comeptitors based off of key metrics
Alternative Hypothesis (Ha) = MechaCar is not priced comparable to similar competitors bassed off of key metrics. 

A multiple linear regression can be performed to see what metrics (independent variables) have a significant relationship with the dependent variable (Car Price).  In order to run this test MechaCar will need to have the metric data on their competitor vehicles ( mostly can be found in a Consumers Report).  

