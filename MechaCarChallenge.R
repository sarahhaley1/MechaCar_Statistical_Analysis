
library(dplyr)

## Linear Regression for MechaCar data
# loading the data set 
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(MechaCar)

# linear regression on all six variable 
linear_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

# finding the summary statistics to determine the p-value and r-squared value
summ_stats <- summary(linear_model)
summ_stats

## Suspension Coil Technical Analysis 
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
View(SuspensionCoil)

total_summary <- SuspensionCoil %>% select(PSI) %>%
  summarize(meanPSI = mean(PSI), medianPSI = median(PSI), variancePSI = var(PSI), stdPSI = sd(PSI))

total_summary <- as.data.frame(total_summary)
total_summary    


## lot summary - grouping the data by lot number 

lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>%
  summarize(mean_byLot=mean(PSI), median_byLot=median(PSI), variance_byLot=var(PSI), std_byLot=sd(PSI))
lot_summary


