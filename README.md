# MechaCar Statistical Analysis

## Deliverable 1: Linear Regression to Predict MPG

![car_summary.PNG](https://github.com/Alawler12/MechaCar_Statistical_Analysis/blob/main/screenshots/car_summary.PNG)

Ground clearance and vehicle length provide non-random amount of variance to the mpg values.  
In this linear regression model, the slope of the linear model is not considered to be zero because the p-value was 5.35e-11, or 0.0000000000535, which is smaller than the significance level of 0.05.
This linear model predicts the mpg of the MechaCar prototypes effectively because the multiple r-squared value was 0.71 which means the model will predict accurately about 71% of the time.


## Deliverable 2: Summary Statistics on Suspension Coils 
The analysis of the suspension coil data shows that taken as a whole, the coils show a variance of 62.3 PSI.  This is below the 100 PSI limit specified by the manufacturing specs, so the coils look like they meet the design specifications.

![total_summary.PNG](https://github.com/Alawler12/MechaCar_Statistical_Analysis/blob/main/screenshots/total_summary.PNG)

However, when analyzed individually, Lot 3 shows far more variation than the other lots.  Lot 1 and Lot 2 are within design specifications at .98 PSI and 7.47 PSI respectively.  Lot 3 exceeds the manufacturing specs by a large margin, at 170.29 PSI.  The large difference between Lots 1/2 and Lot 3, explains how the total summary is within design specifications when averaged together.

![lot_summary.PNG](https://github.com/Alawler12/MechaCar_Statistical_Analysis/blob/main/screenshots/lot_summary.PNG)

## Deliverable 3: T-Tests on Suspension Coils

![lot1_ttest.PNG](https://github.com/Alawler12/MechaCar_Statistical_Analysis/blob/main/screenshots/lot1_ttest.PNG)
![lot2_ttest.PNG](https://github.com/Alawler12/MechaCar_Statistical_Analysis/blob/main/screenshots/lot2_ttest.PNG)
![lot3_ttest.PNG](https://github.com/Alawler12/MechaCar_Statistical_Analysis/blob/main/screenshots/lot3_ttest.PNG)

Looking at the one-sample t-tests, the PSI values are not statistically different from the population mean for Lot 1 and Lot 2.  However, Lot 3 shows a mean that is different than the population mean.  The p-value for Lot 3 is 0.041, which is lower than the significance level, which shows that there is evidence that the suspension coil PSI for Lot 3 is statistically different than the population mean.

##Deliverable 4: Design a Study Comparing the MechaCar to the Competition

As we grapple with the effect of climate change, a metric that concerns consumers is fuel-efficiency.  This is a performance metric that is often reported by manufacturers, so it is easy data to collect.  We could create a study that tests whether or not the fuel-efficiency (mpg rating) of the MechaCar is statistically different than a sample of comparable cars.  If we created a study for this, the null hypothesis would be that there is no statistical difference between the fuel efficiency of the MechaCar and that of other comparable cars. The alternative hypothesis would be that there is a statistical difference. The statistical test we could use would be a one-sample t-test where we compare the mean of MechaCar fuel efficiency to the population mean of fuel efficiency of other comparable cars. The data needed to run this test is data on fuel efficiency for the MechaCar as well as a random sample of fuel efficiency for other comparable cars.  We would need multiple data points for both groups.
