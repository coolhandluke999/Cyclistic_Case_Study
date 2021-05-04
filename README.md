### Cyclistic_Case_Study

## Project Overview 

* Analyzed 12 months of Cyclistic trip data. Cyclistic is a fictional bike rental company. 
* Project goal was identifying and describing how the two main rider types--casual and member--use Cyclistic bikes differently.

# Code and Resources Used

R Version: 3.6.1
Packages: tidyverse: dplyr, ggplot2; readr, lubridate
data at https://divvy-tripdata.s3.amazonaws.com/index.html  
data provided by https://artscience.blog/home/divvy-dataviz-case-study  
data used in accordance with https://www.divvybikes.com/data-license-agreement  

# Date Cleaning

After downloading the data, the following changes were made to the data file:
* Changed "rideid" and "rideable type" to character variables
* Changed "started_at" and "ended_at" to date/time variables
* Changed "start_station_id" and "end_station_id" to integer variables
* Combined the separate 12 month data files into one file
* Create a "trip_duration_mins" column--this column is the time difference between "started_at" and "ended_at"
* Removed unnecessary columns--"start_lat", "start_lng", "end_lat", "end_lng"
* Reviewed data for NAs, and outliers. "....station_name" contains a high number of NAs. Trip duration has a small percentage of signifcant trip_duration outliers.
* Saved as .csv

Please note that since the file was saved as a .csv several of the changes above--specifically the changes to "started_at" and "ended_at" and "rideid" are not saved in the cleaned....csv file. Thus, these transformations are included in the EDA notebook.

# EDA

Analyzing the distributions of the data with particular attention to identifying differences in use for the two rider types--casual and member. Please see a few highlights of the EDA below.

[1] "All Riders" 
0%0.125%850%14.675%26.7100%58720 
[1] "Casual Riders" 
0%0.125%11.650%21.275%40.3100%55683.9 
[1] "Member Riders" 
0%0.125%6.550%11.575%20.1100%58720 

![viz1](https://user-images.githubusercontent.com/36319226/116950579-4a538400-ac3a-11eb-91e1-84ee25697659.png)
![viz2](https://user-images.githubusercontent.com/36319226/116950583-4cb5de00-ac3a-11eb-8449-a4e685db8675.png)
![viz3](https://user-images.githubusercontent.com/36319226/116950584-4f183800-ac3a-11eb-9e85-2b7d0a503e23.png)
