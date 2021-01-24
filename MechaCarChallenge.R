# Deliverable 1

# Use R's read.csv() function
# MechaCar_mpg.CSV


MechaCar_MPG_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(MechaCar_MPG_Table)
# Use tidyverse's dplyr library to transforms R data.
library("tidyverse")

# multiple linear regression - MechaCar_mpg.CSV
# Using multiple linear regression, we designed a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset.
# In R, our multiple linear regression statement is as follows:
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_MPG_Table) #generate multiple linear regression model
# Now that we have our multiple linear regression model, we need to obtain our statistical metrics using the summary() function.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_MPG_Table)) #generate summary statistics

# vehicle length
# Calculate the data points to use for our line plot using our lm(mpg ~ vehicle_length,MechaCar_MPG_Table)coefficients as follows:
MPG_model1 <- lm(mpg ~ vehicle_length,MechaCar_MPG_Table) #create linear model
MPG_yvals1 <- MPG_model1$coefficients['vehicle_length']*MechaCar_MPG_Table$vehicle_length + MPG_model1$coefficients['(Intercept)'] #determine y-axis values from linear model
# Once we have calculated our line plot data points, we can plot the linear model over our scatter plot:
plt1 <- ggplot(MechaCar_MPG_Table,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt1 + geom_point() + geom_line(aes(y=MPG_yvals1), color = "red") #plot scatter and linear model ???

# vehicle weight
MPG_model2 <- lm(mpg ~ vehicle_weight,MechaCar_MPG_Table) #create linear model
MPG_yvals2 <- MPG_model2$coefficients['vehicle_weight']*MechaCar_MPG_Table$vehicle_weight + MPG_model2$coefficients['(Intercept)'] #determine y-axis values from linear model
plt2 <- ggplot(MechaCar_MPG_Table,aes(x=vehicle_weight,y=mpg)) #import dataset into ggplot2
plt2 + geom_point() + geom_line(aes(y=MPG_yvals2), color = "red") #plot scatter and linear model

# spoiler angle
MPG_model3 <- lm(mpg ~ spoiler_angle,MechaCar_MPG_Table) #create linear model
MPG_yvals3 <- MPG_model3$coefficients['spoiler_angle']*MechaCar_MPG_Table$spoiler_angle + MPG_model3$coefficients['(Intercept)'] #determine y-axis values from linear model
plt3 <- ggplot(MechaCar_MPG_Table,aes(x=spoiler_angle,y=mpg)) #import dataset into ggplot2
plt3 + geom_point() + geom_line(aes(y=MPG_yvals3), color = "red") #plot scatter and linear model

# ground_clearance
MPG_model4 <- lm(mpg ~ ground_clearance,MechaCar_MPG_Table) #create linear model
MPG_yvals4 <- MPG_model4$coefficients['ground_clearance']*MechaCar_MPG_Table$ground_clearance + MPG_model4$coefficients['(Intercept)'] #determine y-axis values from linear model
plt4 <- ggplot(MechaCar_MPG_Table,aes(x=ground_clearance,y=mpg)) #import dataset into ggplot2
plt4 + geom_point() + geom_line(aes(y=MPG_yvals4), color = "red") #plot scatter and linear model

# AWD
MPG_model5 <- lm(mpg ~ AWD,MechaCar_MPG_Table) #create linear model
MPG_yvals5 <- MPG_model5$coefficients['AWD']*MechaCar_MPG_Table$AWD + MPG_model5$coefficients['(Intercept)'] #determine y-axis values from linear model
plt5 <- ggplot(MechaCar_MPG_Table,aes(x=AWD,y=mpg)) #import dataset into ggplot2
plt5 + geom_point() + geom_line(aes(y=MPG_yvals5), color = "red") #plot scatter and linear model

# MPG - Q1 ??? do i need it?
MPG_model6 <- lm(mpg ~ mpg,MechaCar_MPG_Table) #create linear model
MPG_yvals6 <- MPG_model5$coefficients['mpg']*MechaCar_MPG_Table$mpg + MPG_model6$coefficients['(Intercept)'] #determine y-axis values from linear model
plt6 <- ggplot(MechaCar_MPG_Table,aes(x=mpg,y=mpg)) #import dataset into ggplot2
plt6 + geom_point() + geom_line(aes(y=MPG_yvals6), color = "red") #plot scatter and linear model



# Deliverable 2

# Suspension Coil Summary
# We created a summary statistics table for the suspension coil's pounds-per-inch continuous variable.
# PSI = pound per square inch in Tire
Suspension_Coil_Table <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)
View(Suspension_Coil_Table)
# group by PSI
Summary_Statistics_Table <- Suspension_Coil_Table %>% group_by(PSI) %>% summarize(Mean= mean(Suspension_Coil_Table$PSI), Median= median(Suspension_Coil_Table$PSI), Variance= var(Suspension_Coil_Table$PSI), Standard_Deviation= sd(Suspension_Coil_Table$PSI))
View(Summary_Statistics_Table)

# group by Manufacturing_Lot - Q2 ???? per Lot???
#Summary_Statistics_Table2 <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(Suspension_Coil_Table$Manufacturing_Lot), Median= median(Suspension_Coil_Table$Manufacturing_Lot), Variance= var(Suspension_Coil_Table$Manufacturing_Lot), Standard_Deviation= sd(Suspension_Coil_Table$Manufacturing_Lot))
Summary_Statistics_Table2 <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(Suspension_Coil_Table$PSI), Median= median(Suspension_Coil_Table$PSI), Variance= var(Suspension_Coil_Table$PSI), Standard_Deviation= sd(Suspension_Coil_Table$PSI))
View(Summary_Statistics_Table2)

# filter PSI > 15000, and see the statistical summary
Suspension_Coil_PSI_1500_Table <- Suspension_Coil_Table[Suspension_Coil_Table$PSI > 1500,]
Summary_Statistics_PSI_1500_Table <- Suspension_Coil_PSI_1500_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(Suspension_Coil_PSI_1500_Table$PSI), Median= median(Suspension_Coil_PSI_1500_Table$PSI), Variance= var(Suspension_Coil_PSI_1500_Table$PSI), Standard_Deviation= sd(Suspension_Coil_PSI_1500_Table$PSI))
View(Summary_Statistics_PSI_1500_Table)

summarize_Suspension_Coil_PSI_1500_Table <- Suspension_Coil_PSI_1500_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median= median(Suspension_Coil_PSI_1500_Table$PSI).groups = 'keep') #create summary table

#PSI > 1500
Suspension_Coil_PSI_Lot_Table <- Suspension_Coil_Table[Suspension_Coil_Table$PSI > 1500,]

?subset()
# PSI > 1500, Lot1
#filter_Suspension_Coil_PSI_Lot1 <- subset(Suspension_Coil_Table, PSI > 1500 & Manufacturing_Lot == "Lot1" & "clean" %in% title_status) #filter by PSI and Lot
filter_Suspension_Coil_PSI_Lot1 <- subset(Suspension_Coil_Table, PSI > 1500 & Manufacturing_Lot == "Lot1") #filter by price and drivetrain

filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]
filter_Suspension_Coil1 <- subset(Suspension_Coil_Table, Manufacturing_Lot  == "Lot1" & "clean" %in% title_status) #filter by price and drivetrain


filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]
View(Suspension_Coil_PSI_Lot_Table)

library(tidyverse)
?mutate()

Suspension_Coil_Table2 <- Suspension_Coil_Table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) #add columns to original data frame

total_summary <- Suspension_Coil_Table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table

lot_summary <- Suspension_Coil_Table2 %>% group_by(Manufacturing_Lots) %>% summarize(Mean= mean(Suspension_Coil_Table$PSI), .groups = 'keep') #create summary table

# Deliverable 3 - # Suspension Coil T-Test
# We determined if the suspension coil's pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch.
# Generating samples using random sampling
population_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset
plt <- ggplot(population_table,aes(x=PSI)) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

# Create a sample dataset using dplyr's sample_n() function.
sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
plt <- ggplot(sample_table,aes(x=log10(PSI))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

# Welch One Sample t-test
t.test((sample_table$PSI),mu=mean(population_table$PSI)) #compare sample versus population means

# Welch Two Sample t-test
sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data
t.test((sample_table$PSI),(sample_table2$PSI)) #compare means of two samples

# 
filter_table <- demo_table2[demo_table2$price > 10000,]

?subset()

filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) #filter by price and drivetrain


filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]

# Deliverable 4
# MechaCar to the Competition Analysis