# MechaCar_Statistical_Analysis

## Project Overview 
The objective of the project is to analyze the metrics that can affect the manufacture of a new prototype car and to compare the performance of the vehicle in different batches of manufacturers. These metrics include vehicle length, weight, spoiler angle, ground clearance, AWD, MPG, and PSI ratings.

## Linear Regression to Predict MPG

![Results](Resources/Linear_regression.PNG)

-The variance of a non-random variable is usually 0. Given this fact, it can be said that the coefficients of intersection, vehicle length, and ground clearance provide a non-random amount of variance to mpg values.

-With a significance level of 0.05, we can reject the null hypothesis due to the extremely small p-value. The null hypothesis of a linear regression states that the slope (β1) is equal to 0. However, if we reject the null hypothesis, we are affirming that the alternative (β1 ≠ 0) is true. Therefore, prove that the slope is not 0.


## Summary Statistics on Suspension Coils

![Results](Resources/lot_summary.PNG)

The variation for the entire data set shows that the current manufacturing data meets the 100 pounds per square inch variation limitation. However, when divided into three lots, the third lot indicates much greater variance. Because batches are chosen at random, there is a chance that one third of the batch will not meet the necessary requirement for suspension coils.

## T-Test on Suspension Coils

### Lot 1 
With a significance level of 0.05, we don't reject the null hypothesis since the p-value is equal to 1. An interesting correlation between the p-value and the confidence intervals is that as the p-values get larger, the interval of Confidence becomes smaller, which implies more precision in forecasting the true population mean.

### Lot 2
With a significance level of 0.05, we do not reject the null hypothesis again since the p-value equals 0.6. The second batch also has a relatively small confidence interval.

### Lot 3
With a significance level of 0.05, we reject the null hypothesis since the p-value is equal to 0.041. The mean of this sample is also significantly lower compared to the two previous batches. More importantly, unlike the previous two batches, the confidence interval for the third batch does not include the predicted population mean.
