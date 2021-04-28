# load Cyclistic data locally form .csv files

# load libraries
library(tidyverse)
library(lubridate)
library(ggplot2)

# load data files
cyclistic_202004 <- read.csv("202004-divvy-tripdata.csv")
cyclistic_202005 <- read.csv("202005-divvy-tripdata.csv")
cyclistic_202006 <- read.csv("202006-divvy-tripdata.csv")
cyclistic_202007 <- read.csv("202007-divvy-tripdata.csv")
cyclistic_202008 <- read.csv("202008-divvy-tripdata.csv")
cyclistic_202009 <- read.csv("202009-divvy-tripdata.csv")
cyclistic_202010 <- read.csv("202010-divvy-tripdata.csv")
cyclistic_202011 <- read.csv("202011-divvy-tripdata.csv")
cyclistic_202012 <- read.csv("202012-divvy-tripdata.csv")
cyclistic_202101 <- read.csv("202101-divvy-tripdata.csv")
cyclistic_202102 <- read.csv("202102-divvy-tripdata.csv")
cyclistic_202103 <- read.csv("202103-divvy-tripdata.csv")

# review data files

str(cyclistic_202004)

    # changes needed
            # rideid, rideable type from factor to character
cyclistic_202004 <- mutate(cyclistic_202004, ride_id = as.character(ride_id))
cyclistic_202005 <- mutate(cyclistic_202005, ride_id = as.character(ride_id))
cyclistic_202006 <- mutate(cyclistic_202006, ride_id = as.character(ride_id))
cyclistic_202007 <- mutate(cyclistic_202007, ride_id = as.character(ride_id))
cyclistic_202008 <- mutate(cyclistic_202008, ride_id = as.character(ride_id))
cyclistic_202009 <- mutate(cyclistic_202009, ride_id = as.character(ride_id))
cyclistic_202010 <- mutate(cyclistic_202010, ride_id = as.character(ride_id))
cyclistic_202011 <- mutate(cyclistic_202011, ride_id = as.character(ride_id))
cyclistic_202012 <- mutate(cyclistic_202012, ride_id = as.character(ride_id))
cyclistic_202101 <- mutate(cyclistic_202101, ride_id = as.character(ride_id))
cyclistic_202102 <- mutate(cyclistic_202102, ride_id = as.character(ride_id))
cyclistic_202103 <- mutate(cyclistic_202103, ride_id = as.character(ride_id))

cyclistic_202004 <- mutate(cyclistic_202004, rideable_type = as.character(rideable_type))
cyclistic_202005 <- mutate(cyclistic_202005, rideable_type = as.character(rideable_type))
cyclistic_202006 <- mutate(cyclistic_202006, rideable_type = as.character(rideable_type))
cyclistic_202007 <- mutate(cyclistic_202007, rideable_type = as.character(rideable_type))
cyclistic_202008 <- mutate(cyclistic_202008, rideable_type = as.character(rideable_type))
cyclistic_202009 <- mutate(cyclistic_202009, rideable_type = as.character(rideable_type))
cyclistic_202010 <- mutate(cyclistic_202010, rideable_type = as.character(rideable_type))
cyclistic_202011 <- mutate(cyclistic_202011, rideable_type = as.character(rideable_type))
cyclistic_202012 <- mutate(cyclistic_202012, rideable_type = as.character(rideable_type))
cyclistic_202101 <- mutate(cyclistic_202101, rideable_type = as.character(rideable_type))
cyclistic_202102 <- mutate(cyclistic_202102, rideable_type = as.character(rideable_type))
cyclistic_202103 <- mutate(cyclistic_202103, rideable_type = as.character(rideable_type))
            # started_at, ended_at from factor to date/time
cyclistic_202004 <- mutate(cyclistic_202004, started_at = ymd_hms(as.character(started_at)))
cyclistic_202005 <- mutate(cyclistic_202005, started_at = ymd_hms(as.character(started_at)))
cyclistic_202006 <- mutate(cyclistic_202006, started_at = ymd_hms(as.character(started_at)))
cyclistic_202007 <- mutate(cyclistic_202007, started_at = ymd_hms(as.character(started_at)))
cyclistic_202008 <- mutate(cyclistic_202008, started_at = ymd_hms(as.character(started_at)))
cyclistic_202009 <- mutate(cyclistic_202009, started_at = ymd_hms(as.character(started_at)))
cyclistic_202010 <- mutate(cyclistic_202010, started_at = ymd_hms(as.character(started_at)))
cyclistic_202011 <- mutate(cyclistic_202011, started_at = ymd_hms(as.character(started_at)))
cyclistic_202012 <- mutate(cyclistic_202012, started_at = ymd_hms(as.character(started_at)))
cyclistic_202101 <- mutate(cyclistic_202101, started_at = ymd_hms(as.character(started_at)))
cyclistic_202102 <- mutate(cyclistic_202102, started_at = ymd_hms(as.character(started_at)))
cyclistic_202103 <- mutate(cyclistic_202103, started_at = ymd_hms(as.character(started_at)))

cyclistic_202004 <- mutate(cyclistic_202004, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202005 <- mutate(cyclistic_202005, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202006 <- mutate(cyclistic_202006, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202007 <- mutate(cyclistic_202007, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202008 <- mutate(cyclistic_202008, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202009 <- mutate(cyclistic_202009, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202010 <- mutate(cyclistic_202010, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202011 <- mutate(cyclistic_202011, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202012 <- mutate(cyclistic_202012, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202101 <- mutate(cyclistic_202101, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202102 <- mutate(cyclistic_202102, ended_at = ymd_hms(as.character(ended_at)))
cyclistic_202103 <- mutate(cyclistic_202103, ended_at = ymd_hms(as.character(ended_at)))


            # start_station_name, end_station_name from factor to character
            # start_station_id as integer
cyclistic_202004 <- mutate(cyclistic_202004, start_station_id = as.integer(start_station_id))
cyclistic_202005 <- mutate(cyclistic_202005, start_station_id = as.integer(start_station_id))
cyclistic_202006 <- mutate(cyclistic_202006, start_station_id = as.integer(start_station_id))
cyclistic_202007 <- mutate(cyclistic_202007, start_station_id = as.integer(start_station_id))
cyclistic_202008 <- mutate(cyclistic_202008, start_station_id = as.integer(start_station_id))
cyclistic_202009 <- mutate(cyclistic_202009, start_station_id = as.integer(start_station_id))
cyclistic_202010 <- mutate(cyclistic_202010, start_station_id = as.integer(start_station_id))
cyclistic_202011 <- mutate(cyclistic_202011, start_station_id = as.integer(start_station_id))
cyclistic_202012 <- mutate(cyclistic_202012, start_station_id = as.integer(start_station_id))
cyclistic_202101 <- mutate(cyclistic_202101, start_station_id = as.integer(start_station_id))
cyclistic_202102 <- mutate(cyclistic_202102, start_station_id = as.integer(start_station_id))
cyclistic_202103 <- mutate(cyclistic_202103, start_station_id = as.integer(start_station_id))

cyclistic_202004 <- mutate(cyclistic_202004, end_station_id = as.integer(end_station_id))
cyclistic_202005 <- mutate(cyclistic_202005, end_station_id = as.integer(end_station_id))
cyclistic_202006 <- mutate(cyclistic_202006, end_station_id = as.integer(end_station_id))
cyclistic_202007 <- mutate(cyclistic_202007, end_station_id = as.integer(end_station_id))
cyclistic_202008 <- mutate(cyclistic_202008, end_station_id = as.integer(end_station_id))
cyclistic_202009 <- mutate(cyclistic_202009, end_station_id = as.integer(end_station_id))
cyclistic_202010 <- mutate(cyclistic_202010, end_station_id = as.integer(end_station_id))
cyclistic_202011 <- mutate(cyclistic_202011, end_station_id = as.integer(end_station_id))
cyclistic_202012 <- mutate(cyclistic_202012, end_station_id = as.integer(end_station_id))
cyclistic_202101 <- mutate(cyclistic_202101, end_station_id = as.integer(end_station_id))
cyclistic_202102 <- mutate(cyclistic_202102, end_station_id = as.integer(end_station_id))
cyclistic_202103 <- mutate(cyclistic_202103, end_station_id = as.integer(end_station_id))

# combine all data sets

cyclistic_12months <- bind_rows(cyclistic_202004, cyclistic_202005, cyclistic_202006, cyclistic_202007, cyclistic_202008,
                                cyclistic_202009, cyclistic_202010, cyclistic_202011, cyclistic_202012, cyclistic_202101,
                                cyclistic_202102, cyclistic_202103)

# create trip duration column 

start <- cyclistic_12months$started_at
end <- cyclistic_12months$ended_at 
length_of_time <- start %--% end

cyclistic_12months$trip_duration_mins <-  round(as.duration(length_of_time) / dminutes(1), 1)

# remove unnecessary columns

cyclistic_12months <- cyclistic_12months %>% 
                        select(-c(start_lat, start_lng, end_lat, end_lng))

# validate columns
summary(cyclistic_12months)
    # 3 types of rideable types - docked bike, electric bike, classic bike
unique(cyclistic_12months$rideable_type)
    # 2 types of member_casual: casual and member
unique(cyclistic_12months$member_casual)
    #validate trip_duration field; remove rides <= 0 mins
cyclistic_12months %>% filter(trip_duration_mins <= 0) %>% 
    select(trip_duration_mins)

cyclistic_12months_clean <- subset(cyclistic_12months, trip_duration_mins > 0)
    #NA check
is.na(cyclistic_12months_clean)

