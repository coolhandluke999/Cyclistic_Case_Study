# Cyclistic Rider Report

### Purpose

The goal of this analysis was identifying the different ways the two main groups of riders--casual and member--use Cyclistic bicycles. The two groups of riders consist of: casual riders who pay for bicylce rentals through single-ride or full-day passess, and member riders who purchase an annual subscription for the bicycle rentals. Cyclistic management requested an analysis of their rider data, for the previous 12 months, for the purpose of identifying differences between casual and member riders. Cyclistic will utilize this analysis in assisting the company design marketing strategies for converting casual riders into annual members.

### Data Used

Cyclistic provided 12 months of rider data convering the time period April 2020 through March 2021. The data files were obtained in .csv format. The data was sourced from:

data at https://divvy-tripdata.s3.amazonaws.com/index.html  
data provided by https://artscience.blog/home/divvy-dataviz-case-study  
data used in accordance with https://www.divvybikes.com/data-license-agreement  

### Data Cleaning

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

### Analysis

Casual riders and member riders exhibit several different behaviors in how they utilize Cyclistic bicylcles. In the provided data set, member rider trips accounted for 59% of all trips while casual rider trips amounted to 41%.  

![rider_breakdown](https://user-images.githubusercontent.com/36319226/117039867-1cb01e80-acbe-11eb-81c1-30a7fd511b4d.png)

The median trip duration for all riders was 14.6 minutes with 25% of all trips at least 8 minutes and 75% of trips having a duration of 26.7 minutes. The individual group distributions are broken out in the table below:  

Trip durations by rider group:

| Rider group    |  25%     |   Median   |     75%     |
| -------------  |:--------:|:----------:|:-----------:|
| Casual         | 11.6     | 21.2       | 40.3        |
| Member         | 6.5      | 11.5       | 20.1        |
| All riders     | 8.0      | 14.6       | 26.7        |

Analysis of the data showed 1.7% of all trips with a duration of 960 or more. As these trips are a small portion of the total trips and trip durations for this subset are large the remaining analysis filters trip durations of 1) under 100 minutes and 2) under 30 minutes. The filtering of these significant outliers will provide more meaningful insights about how the two rider groups behave in utilizing Cyclistic bicycles.

Trips with a duration greater than 960 minutes:

| Rider group     | Trips > 960 minutes |
|-----------------|:-------------------:|
| Casual          | 4,311               |
| Member          | 620                 |

When examining trips with a duration of less than 100 minutes, we see an approximately normal distribution skewed to the right. 

![trips100](https://user-images.githubusercontent.com/36319226/117044395-3dc73e00-acc3-11eb-8c51-2688e0cdc26c.png)

By rider group we see that member riders take more trips under 25 minutes while casual riders have a longer range of trips durations.

![trips100_bygroup](https://user-images.githubusercontent.com/36319226/117044502-5afc0c80-acc3-11eb-92f4-7ab42ea80460.png)

Trips with a duration under 100 minutes:

| Rider group     | Trips               | Mean trip duration |
|-----------------|:-------------------:|--------------------|
| Casual          | 1,332,754           | 26.3               |
| Member          | 2,041,366           | 14.9               |

The breakdown of total trips by rider group has stayed consistent with the overall data set with members accounting for 60% of trips under 100 minutes and casual riders taking 40%. When evaluating the mean trip duration for this subset of trips we see that casual members (26.3 mins) are, on average, taking trips with a duration nearly double that of member riders (14.9 mins).

Analyzing the data for trips with a duration of less than 30 minutes, we see some differences compared to the trips with a duration under 100 minutes subset. First, member riders account for a larger share of trips at 66% compared to 60% for trips under 100 minutes. 

![trips30](https://user-images.githubusercontent.com/36319226/117047148-6270e500-acc6-11eb-9a00-45011a589877.png)

Second, we see a 20% decrease in the mean trip duration for members(from 14.9 mins to 11.8 mins). While casual riders see their mean trip duration fall 43% (from 26.3 mins to 14.9 mins). Removing trips with longer durations we see the member and casual riders become more similar in behavior. The main difference between the two rider groups being the much greater frequency in trips under 10 minutes.

![trips30_bygroup](https://user-images.githubusercontent.com/36319226/117047170-6ac92000-acc6-11eb-8018-d54ae7b28335.png)

Trips with a duration under 30 minutes:

| Rider group     | Trips               | Mean trip duration |
|-----------------|:-------------------:|--------------------|
| Casual          | 930,106             | 14.9               |
| Member          | 1,820,762           | 11.8               |

Next, we examined the day-of-the-week riding tendencies of the two groups. This analysis considered all trips with a trip duration under 100 minutes. 

![Day_bygroup](https://user-images.githubusercontent.com/36319226/117051752-c0ec9200-accb-11eb-80c2-1d6c011437c7.png)

With the above visualization we see a difference in the day-of-the-week riding patterns between the casual and member groups. The casual group takes more weekend trips and less trips on weekdays than the member group. While the member group has less variability in the number of trips based on the day-of-the-week.  Saturday is the most popular day for both groups. Saturday, for casual riders, is also the only day-of-the-week where they have a higher trip count than any day-of-the-week for members.

![Duration_byDay](https://user-images.githubusercontent.com/36319226/117052354-7ddeee80-accc-11eb-9e2b-ade0cfd67735.png)

Looking at the day-of-the-week trip durations breakdown above we see that trip duration is more consistent day-to-day on weekdays for members. While casual riders increase thier trip durations more on weekends than do the member riders. Additionally, Sunday is the day both groups hit their peak mean trip duration. 

We were unable to analyze rider specific and location data with the provided data set.

### Recommendations

Casual riders utilize Cyclistic bicycles in several ways that are different than riders with annual subscription plans:

* Casual riders take less trips overall with the biggest difference in number of trips occurring on weekdays.
* Casual riders have longer trip durations. 
* Casual riders take a higher percentage of their total trips on the weekends.

Since casual riders are more likely to take longer rides and ride more frequently on the weekends than on weekdays we recommend the following:

* offering an annual pass that discounts rides over a certain duration (ie, discounts on rides with a trip duration over 30 minutes)
* offering an annual pass that discounts trips made on weekends

Appealing to casual rider tendencies--longer, weekend rides--by providing them with a discounted rate for those types of trips we expect casual riders will purchase more annual passes without adjusting their riding tendencies. This will create greater bike utilization on the weekends while keeping weekday utilization relatively static.






