#load the dplyr package
library(dplyr)

#-------------------------------------------------------

#Linear Regression to Predict MPG

#Import and read in file as a dataframe.
MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)

# summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df))

#-------------------------------------------------------

#Create Visualizations for the Trip Analysis

#Import and read in file
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#stat summary with summarize()
total_summary <- suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# stat summary with group_by()
lot_summary <- suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#-------------------------------------------------------

#T-Tests on Suspension Coils

# t-test for all the lots.
t.test(suspension_coil$PSI,mu=mean(suspension_coil$PSI))

# Three more t-test lots
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot1"),mu=mean(suspension_coil$PSI))

t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot2"),mu=mean(suspension_coil$PSI))

t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot3"),mu=mean(suspension_coil$PSI))
