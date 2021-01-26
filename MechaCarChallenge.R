
library(dplyr)

# loading the data set 
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(MechaCar)

# linear regression on all six variable 
linear_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

# finding the summary statistics to determine the p-value and r-squared value
summ_stats <- summary(linear_model)
summ_stats