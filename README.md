# Statistics-and-R

![R and Statistics](https://github.com/SoonaBritney/Statistics-and-R/blob/main/Capture_R_logo.JPG)

### Project Overview
In R-Analysis, we applied our understanding of statistics and hypothesis testing to analyze a series of datasets from the automotive industry. Our analysis includes visualizations, statistical tests, and interpretation of the results. All of our statistical analysis and visualizations are written in the R programming language.

Throughout the module, we extract, transform, and load (ETL) data; visualize the data; and analyze the data using R. Additionally, we learned a variety of statistical tests, their real-world application in data science, and their implementation in R.

### Resources
1. Data Source: demo.csv, demo.json, demo2.csv, mpg_modified, used_car_data, Vehicle_Data, MechaCar_mpg.csv, Suspension_coil.csv
2. Software: R, RStudio, Rtools

### Objectives
- Load, clean up, and reshape datasets using tidyverse in R.
- Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
- Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
- Plot and identify distribution characteristics of a given dataset.
- Formulate null and alternative hypothesis tests for a given data problem.
- Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
- Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
- Implement and evaluate a chi-squared test for a given dataset.
- Identify key characteristics of A/B and A/A testing.
- Determine the most appropriate statistical test for a given hypothesis and dataset.

### Conclusion Summary

### Deliverable 1: Linear Regression to Predict MPG

1. Scope: Used the library("tidyverse") to load the dpylr package.
2. Import and read the MechaCar_mpg.csv
3. Perform the Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created above as the data parameter.
4. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
5. Findings: 
6. Analysis
- 1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? 
- **Vehicles length, weight, and ground cleanrance is postivly corelated with mpg.
- **Vehicles' Sploiler Angle, and AWD are negativly related to mpg
- **It means, we can predict higher mpg performance when the length of the vehicle is longer, the weight of the vehicle is heavier, and the gound clearnace of the vehicle.
- **For p = .05, only length and clearance are significant**
- 2) Is the slope of the linear model considered to be zero? Why or why not? 
- **As we can see the plots, slops are not zero**
- **Although AWD is is the only variable with a negative relation to mpg, and we consider the slop is zero.**


![linear regression summary](https://github.com/SoonaBritney/Statistics-and-R/blob/main/1_multiple_linear_model.JPG)

![6 variables lineer regression summary](https://github.com/SoonaBritney/Statistics-and-R/blob/main/2_multiple_linear_model_summary.JPG)

![scatter plot - vehicle length](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_vehicle_length.JPG)

![scatter plot - vehicle weight](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_vehicle_weight.JPG)

![scatter plot - spolier angle](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_vehicle_spoiler_angle.JPG)

![scatter plot - grund clearance](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_ground_clearance.JPG)

![scatter plot - AWD](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_AWD.JPG)

### Deliverable 2: Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.
- Total Summary: mean:1498.78, mdean:1500, variance:62.29356, standard veviation:7.892627
- ![total_summary](https://github.com/SoonaBritney/Statistics-and-R/blob/main/total_summary.JPG)

- Lot_Summary per Lot: compared to the total_summary, the LOT3 statistics shows the bigger variance, and standard deviation, which means the vehicles manufactured from Lot 3 has incosistent quality   
   - To calculate the Lot Summary per Lot, we used the filter, subset(), and rbind technics in R statistics.
   - ![lot_summary R script](https://github.com/SoonaBritney/Statistics-and-R/blob/main/2_lot_summary_R_script.JPG)
   
- lot_summary
- ![lot_summary_groupby](https://github.com/SoonaBritney/Statistics-and-R/blob/main/lot_summary_groupby.JPG)
- ![lot_summary](https://github.com/SoonaBritney/Statistics-and-R/blob/main/lot_summary.JPG)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 
   - In total_summary, the variance is smaller that 100 (62.29326), so it is satisfactory. 
   - in lot_summary though, the LOT 3 variance is over 100 (170.2861224), so it is not applicable. The LOT1, LOT2 variance is satisfactory.
_
### Deliverable 3: T-Test on Suspension Coils
Using R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

1. T-Test for Total
  - ![T-Test sample data vs. filteredpopulation](https://github.com/SoonaBritney/Statistics-and-R/blob/main/T-Test_TOTAL.JPG) 
   
2. T-Test Lot1:
- ![T-Test sample data vs. filteredpopulation](https://github.com/SoonaBritney/Statistics-and-R/blob/main/T-Test_lot1_1500.JPG)   
   
3. T-Test Lot2:
 - ![T-Test sample data vs. filteredpopulation](https://github.com/SoonaBritney/Statistics-and-R/blob/main/T-Test_lot2_1500.JPG)   
   
4. T-Test Lot3:
 - ![T-Test sample data vs. filteredpopulation](https://github.com/SoonaBritney/Statistics-and-R/blob/main/T-Test_lot3_1500.JPG)      

#### Deliverable T-Test Conclsuion:
- **For p = .05, only Lot 1, Lot 2 are significant.
   - **T-test with Lot1 randome sample data (p-value: 1)
   - **T-test with Lot2 randome sample data (p-value: 0.6072)
   - **T-test with Lot3 randome sample data (p-value: 0.004168)
      


### Deliverable 4: Design a Study Comparing the MechaCar to the Competition

1. Study Object: To design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
2. Metrics: The metrics are a statistical study that can quantify how the MechaCar performs against the competition. The metrics are:
   (1) cost, 
   (2) city or highway fuel efficiency, 
   (3) horse power, 
   (4) maintenance cost, 
   (5) safety rating
   (6) Residual MechaCar vehicles Value after 3 years 
3. What metric or metrics are you going to test?
   - cost: We can gather the data of the cost of the MechaCar Vehicle. and other manufacturors, Cost of Vehicle from Kelly Blue Book (https://www.kbb.com/) 
   - city or highway fuel efficiency: we can gather the data from the MechaCa web site and other other manufacturors' web site. We also collect the data from Kelly Blue Book as well (https://www.kbb.com/) 
   - horse power: we can gather the data from the MechaCa web site and other other manufacturors' web site. We also collect the data from Kelly Blue Book as well (https://www.kbb.com/) 
   - maintenance cost: we can gather the data from the MechaCa web site and other other manufacturors' web site. We also collect the data from Kelly Blue Book as well (https://www.kbb.com/)
   - safety rating: we can gather the data from the MechaCa web site and other other manufacturors' web site. We also collect the data from Kelly Blue Book as well (https://www.kbb.com/)
   - Residual MechaCar vehicles Value after 3 years: we can gather the data from the MechaCa web site and other other manufacturors' web site. We also collect the data from Kelly Blue Book as well (https://www.kbb.com/)

- What is the null hypothesis or alternative hypothesis?
  - H0: The null hypothesis is also known as H0 and is generally the hypothesis that can be explained by random chance.
  - **Null Hypothesis: There isn't any difference between the groups.** 
    
  - Ha: The alternate hypothesis is also known as Ha and is generally the hypothesis that is influenced by non-random events.
  - **Alternative hypothesisa: There "is" a difference between the groups. MechaCar is manufacturing excellent cars, so the mean of the follwoing variable are above the total mean against all the vehicles out there on (1) cost, (2) city or highway fuel efficiency, (3) horse power, (4) maintenance cost, (5) safety rating, (6) Residual MechaCar vehicles Value after 3 years**  

      H0 : PH = 0.5,
      Ha : PH ≠ 0.5
      
- We will follow Hypothesis Testing in Five Stepsas below. 
   1. Generate a null hypothesis, its corresponding alternate hypothesis, and the significance level.
   2. Identify a statistical analysis to assess the truth of the null hypothesis.
   3. Compute the p-value using statistical analysis.
   4. Compare p-value to the significance level.
   5. Reject (or fail to reject) the null hypothesis and generate the conclusion.
- What statistical test would you use to test the hypothesis? And why? 
   - Since MechCar Vehicle will be compared with many different vechicle manufactors' in different category (e.g. sedan, SUV, truck, etc.) we should use
   - **ANOVA**:  ANOVA would work if you are comparing multiple groups 
   - One tailed **Two Sample T-Test**: would work if you are comparing two
   - **Not Work with:** Chi-Squared Test, (since it is not categorial), Simple Linear Regression and Multiple Linear Regression (these are not test). 
   - ![selecting appropiate statistics](https://github.com/SoonaBritney/Statistics-and-R/blob/main/Capture_selecting_appropriate_statistics.JPG)

- What data is needed to run the statistical test?  
   - We will use the reliable data source to statistically analize the MechaCar Vehicles against other vehicles. 
   - We can pull the KBB data by using web scrapping technics we learned Module 10: Mission to Mars - Web Scraping with HTML/CSSchapter
   - Or we can use the KBB database for developers (http://developer.kbb.com/). KBB Developer's database is offering API, or web service, so we can easily to connect and pull the data for our R statistics analysis.
   - We will randomizer the data, and use the ANOVA, Multiple Linear Regression, and Chi-Squared Test per category against multiple manufactures, vehicles, and compare p-values.

