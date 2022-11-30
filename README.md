# MechaCar_Statistical_Analysis
### Bootcamp Challenge 15 - Rstudio/Statistics 
##### Colt Korth
&nbsp;

&nbsp;

## Linear Regression to Predict MPG
&nbsp;

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  * Reviewing the Pr(>|t|) scores, vehicle length and ground clearance scores are greater than 0.05 which show a non-random amount of variance. 
&nbsp;

2. is the slope of the linear model considered to be zero? Why or why not?
  * The p-value score is less than 0.05 (5.35e-11), which shows the slope of the linear model is non-zero.
&nbsp;

3. Does this linear model predict the mpg of MechaCar prototypes effectively? Why or why not?
  * The linear model does accurately predict mpg. The r-squared value of 0.7149 shows the prediction is approximately 71% accurate when using this model. 
&nbsp;

#### Summary of Linear Regression Model
![Fig1](https://github.com/ColtPrgms/MechaCar_Statistical_Analysis/blob/main/Images/Figure1.png)
 
 ---
&nbsp;
 
## Summary Statistics on Suspension Coils
&nbsp;

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  * Across the board the manufacturing does meet the design specifications on the suspension coils. When broken down by lots, lot 3 does not meet the specification as its variance is over 100psi (170.29psi). Lots 1 and 2 still fall within design specifications.
&nbsp;

#### Total Summary Table
![Fig2](https://github.com/ColtPrgms/MechaCar_Statistical_Analysis/blob/main/Images/Figure2.png)
&nbsp;

#### Lot Summary Table
![Fig3](https://github.com/ColtPrgms/MechaCar_Statistical_Analysis/blob/main/Images/Figure3.png)
 
--- 
&nbsp;
 
## T-Tests on Suspension Coils
&nbsp;
 
#### Combined Lot Test
The p-value of the combined lot test is 1. This test shows that there is a statistical significance to the population mean, as the p-value is above 0.05.
&nbsp;

![Fig4](https://github.com/ColtPrgms/MechaCar_Statistical_Analysis/blob/main/Images/Combined_Lots_Test.png)
&nbsp;
 
#### Lot 1 Test
The p-value of the Lot 1 test is 1.568e-11. This test shows that there is not a statistically significance to the population mean, as the p-value is below 0.05.
&nbsp;

![Fig5](https://github.com/ColtPrgms/MechaCar_Statistical_Analysis/blob/main/Images/Lot%201%20Test.png)
&nbsp;

#### Lot 2 Test 
The p-value of the Lot 2 test is 0.0006. This test shows that there is not a statistically significance to the population mean, as the p-value is below 0.05.
&nbsp;

![Fig6](https://github.com/ColtPrgms/MechaCar_Statistical_Analysis/blob/main/Images/Lot%202%20Test.png)
&nbsp;

#### Lot 3 Test
The p-value of the Lot 3 test is 0.1589. This test shows that there is a statistically significance to the population mean, as the p-value is above 0.05.
&nbsp;

![Fig7](https://github.com/ColtPrgms/MechaCar_Statistical_Analysis/blob/main/Images/Lot%203%20Test.png)
 
--- 
&nbsp;

## Study Design: MechaCar vs Competition
&nbsp;

To stay competitive with the current market there should be a statistical study on MachaCar vs competitor vehicles for the following metrics:
* Price
* MPG (highway)
* MPG (city)
* Safety Rating
* Avg Repair Costs
The Hypothesis for this study would be:
* Null hypothesis: MechaCar performance across these metrics is the same vs competitor's vehicles and don't have a significant difference.
* Alternative Hypothesis: MechaCar performance across these metrics is greater than competitor's vehicles and has significant differences.
In order to test these hypotheses we will use multiple linear regression to show the impact each metric has against MechaCar vs its competitors. Also t-tests to test sample means for statistical significance. In order to run these tests, there will need to be data on more than 40 vehicles from MechaCar and their competitors that have data on the previously listed metrics. 
 
