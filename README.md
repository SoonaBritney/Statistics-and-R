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

### Summary
- Load, clean up, and reshape datasets using tidyverse in R.
The tidyverse package contains libraries such as dplyr, tidyr, and ggplot2. These packages work together to help simplify the process of creating transformed data columns, grouping data using factors, reshaping our two-dimensional data structures, and visualizing our results using plots.

### Deliverable 1: Linear Regression to Predict MPG

1. Scope: Used the library("tidyverse") to load the dpylr package.
2. Import and read the MechaCar_mpg.csv
3. Perform the Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created above as the data parameter.
4. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
5. Findings: Vehicles length, weight, and ground cleanrance is postivly corelated with mpg. Although, Sploiler Angle, and AWD are negativly related to mpg.  It means, we can predict hifger mpg performance when the length of the vehicle is longer, the weight of the vehicle is heavier, and the gound clearnace of the vehicle is bigger.
6. Analysis
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? (length, weight, ground clearance)
- Is the slope of the linear model considered to be zero? Why or why not? (the slop of the linear module is not zero)
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? (yes, this linear model predict mpg of MechaCar prototypes effectively. we found significant colerations the variables. 


![linear regression summary](https://github.com/SoonaBritney/Statistics-and-R/blob/main/1_multiple_linear_model.JPG)

![6 variables lineer regression summary](https://github.com/SoonaBritney/Statistics-and-R/blob/main/2_multiple_linear_model_summary.JPG)

![scatter plot - vehicle length](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_vehicle_length.JPG)

![scatter plot - vehicle weight](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_vehicle_weight.JPG)

![scatter plot - spolier angle](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_vehicle_spoiler_angle.JPG)

![scatter plot - grund clearance](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_ground_clearance.JPG)

![scatter plot - AWD](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_AWD.JPG)

![scatter plot - mpg](https://github.com/SoonaBritney/Statistics-and-R/blob/main/scatterplot_mpg.JPG)

### Deliverable 2: Summary Statistics on Suspension Coils

### Deliverable 3: T-Test on Suspension Coils

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
  - H0:
  - H1:
- What statistical test would you use to test the hypothesis? And why?
   -
- What data is needed to run the statistical test?  
   - We will use the reliable data source to statistically analize the MechaCar Vehicles against other vehicles. 
   - We can pull the KBB data by using web scrapping technics we learned Module 10: Mission to Mars - Web Scraping with HTML/CSSchapter
   - Or we can use the KBB database for developers (http://developer.kbb.com/). KBB Developer's database is offering API, or web service, so we can easily to connect and pull the data for our R statistics analysis.
   - 

