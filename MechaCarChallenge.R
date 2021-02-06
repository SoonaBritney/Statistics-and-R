# Deliverable 1

# Use R's read.csv() function

MechaCar_MPG_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(MechaCar_MPG_Table)

# Use tidyverse's dplyr library to transforms R data.
library("tidyverse")

# multiple linear regression - MechaCar_mpg.CSV
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_MPG_Table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_MPG_Table)) #generate summary statistics

# vehicle length
MPG_model1 <- lm(mpg ~ vehicle_length,MechaCar_MPG_Table) #create linear model
MPG_yvals1 <- MPG_model1$coefficients['vehicle_length']*MechaCar_MPG_Table$vehicle_length + MPG_model1$coefficients['(Intercept)'] #determine y-axis values from linear model

# scatter plot:
plt1 <- ggplot(MechaCar_MPG_Table,aes(x=vehicle_length,y=mpg)) 
plt1 + geom_point() + geom_line(aes(y=MPG_yvals1), color = "red") 

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


# Deliverable 2

library(tidyverse)

# Suspension Coil Summary - PSI = pound per square inch in Tire
Suspension_Coil_Table <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)
View(Suspension_Coil_Table)

# total summary
total_summary <- Suspension_Coil_Table %>% summarize(Mean= mean(Suspension_Coil_Table$PSI), Median= median(Suspension_Coil_Table$PSI), Variance= var(Suspension_Coil_Table$PSI), Standard_Deviation= sd(Suspension_Coil_Table$PSI))
View(total_summary)

#lot summary 
# option 1 - lot_summary group by Manufacturing_Lot 
lot_summary_test <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(PSI), Median= median(PSI), Variance= var(PSI), Standard_Deviation=sd(PSI), groups='keep')
View(lot_summary_test)


# lot summary double check
# option 2 - using subset
filter_Lot1 <- subset(Suspension_Coil_Table, Manufacturing_Lot == "Lot1")
filter_Lot2 <- subset(Suspension_Coil_Table, Manufacturing_Lot == "Lot2")
filter_Lot3 <- subset(Suspension_Coil_Table, Manufacturing_Lot == "Lot3")

# calculate the each lot's mean, median,variance, sd 
Summary_Lot1 <- filter_Lot1 %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(filter_Lot1$PSI), Median= median(filter_Lot1$PSI), Variance= var(filter_Lot1$PSI), Standard_Deviation= sd(filter_Lot1$PSI))
Summary_Lot2 <- filter_Lot2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(filter_Lot2$PSI), Median= median(filter_Lot2$PSI), Variance= var(filter_Lot2$PSI), Standard_Deviation= sd(filter_Lot2$PSI))
Summary_Lot3 <- filter_Lot3 %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(filter_Lot3$PSI), Median= median(filter_Lot3$PSI), Variance= var(filter_Lot3$PSI), Standard_Deviation= sd(filter_Lot3$PSI))


# merging 3 lots summary using rbind()

lot_summary <- rbind(Summary_Lot1, Summary_Lot2, Summary_Lot3)
view(lot_summary)




# Deliverable 3 - # Suspension Coil T-Test

# Generating samples using random sampling
population_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset
plt <- ggplot(population_table,aes(x=PSI)) #import dataset into ggplot2
plt + geom_density() # plot

# Create a sample dataset using dplyr's sample_n() function.
sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
plt <- ggplot(sample_table,aes(x=log10(PSI))) #import dataset into ggplot2
plt + geom_density() #density plot

# total: t-test across all lots over 1500 
t.test((population_table$PSI),mu=1500) 

# PSI > 1500 filter
filter_population_table <- subset(Suspension_Coil_Table, PSI > '1500')


#total
# t.test((sample_table$PSI),mu=mean(population_table$PSI)) #compare sample versus population means
# t.test((sample_table$PSI),mu=mean(filter_population_table$PSI)) #compare sample versus filtered population PSI > 1500

# Lot 1
t.test((filter_Lot1$PSI),mu=mean(population_table$PSI)) #compare lot1 versus population means
t.test((filter_Lot1$PSI),mu=1500)
       
       

# Lot 2
t.test((filter_Lot2$PSI),mu=mean(population_table$PSI)) #compare lot2 versus population means
t.test((filter_Lot2$PSI),mu=1500) 

# Lot 3
t.test((filter_Lot3$PSI),mu=mean(population_table$PSI)) #compare lot3 versus population means
t.test((filter_Lot3$PSI),mu=1500) 

# Deliverable 4: Design a Study Comparing the MechaCar to the Competition

