
## DELIVERABLE 1 ##

#load dplyr package
library(dplyr)

# Import data
mecha_car <- read.csv(file='MechaCar_mpg.csv')

# Calculate a linear regression that predicts the mpg of MechaCar prototypes
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car))


## DELIVERABLE 2 ##
# Import the data
suspension <- read.csv(file='Suspension_Coil.csv')
# Create a summary data frame
total_summary <- suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# Create a summary data frame grouped by Manufacturing Lot
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))


## DELIVERABLE 3 ##
# Determine if the PSI in all manufacturing batches is statistically different from the population mean of 1,500 pounds per square inch
t.test(suspension$PSI, mu = 1500)
# Determine if the PSI for each manufacturing batch is statistically different from the population mean of 1,500 pounds per square inch.
Lot1 = subset(suspension, Manufacturing_Lot == 'Lot1')
Lot2 = subset(suspension, Manufacturing_Lot == 'Lot2')
Lot3 = subset(suspension, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500) 

t.test(Lot2$PSI, mu = 1500)

t.test(Lot3$PSI, mu = 1500)
