## Deliverable 1

library(dplyr)

# 4. import csv
car_data <- read.csv("MechaCar_mpg.csv")

# 5. Perform a linear regression module 
car_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_data)

# 6. Find the p-value and r-squared of the linear regression module.
summary(car_regression)


##Deliverable 2

# 2. import csv
coil_data <- read.csv("Suspension_Coil.csv")

# 3. Create Total Summary Dataframe
total_summary <- coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# 4. Create Lot Summary Dataframe
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')

## Deliverable 3

# 1. Perform t-test across all Lots
t.test(coil_data$PSI,mu = 1500)

# 2. Perform t-test on Lot 1
t.test(subset(coil_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Perform t-test on Lot 2
t.test(subset(coil_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Perform t-test on Lot 3
t.test(subset(coil_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)