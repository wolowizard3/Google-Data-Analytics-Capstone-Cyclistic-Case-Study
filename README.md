# Google Data Analytics Capstone Cyclistic Case Study

## Introduction

Welcome to the Cyclistic bike-share analysis case study! In this case study, we will perform many real-world tasks of a junior data analyst. We will work for a ﬁctional company, Cyclistic, and meet diﬀerent characters and team members. In order to answer the key business questions, we will follow the steps of the data analysis process: [Ask](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#ask), [Prepare](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#prepare), [Process](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/edit/main/README.md#process), [Analyze](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#analyze), [Share](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#share), and [Act](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#act).

## About the company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.
Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, the director of marketing believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, she believes there is a very good chance to convert casual riders into members.

## Scenario

As a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, our team wants to understand how casual riders and annual members use Cyclistic bikes diﬀerently. From these insights, our team will design a new marketing strategy to convert casual riders into annual members. But ﬁrst, Cyclistic executives must approve the recommendations, so they must be backed up with compelling data insights and professional data visualizations.

## Characters and teams

•	Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also oﬀering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike.  The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

•	Lily Moreno: The director of marketing and your manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.

•	Cyclistic marketing analytics team: A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic achieve them.

•	Cyclistic executive team: The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.


## Ask

Three questions will guide the future marketing program:
1.	How do annual members and casual riders use Cyclistic bikes diﬀerently?
2.	Why would casual riders buy Cyclistic annual memberships?
3.	How can Cyclistic use digital media to inﬂuence casual riders to become members?

Business Task: Recommend marketing strategies aimed at converting casual riders into annual members by better understanding how annual members and casual riders use Cyclistic bikes differently.

## Prepare

We will use Cyclistic’s historical trip data to analyze and identify trends. We will Download and use the previous 12 months of Cyclistic trip from January 2021 to December 2021 data in the link: https://divvy-tripdata.s3.amazonaws.com/index.html. Note that the datasets have a diﬀerent name because Cyclistic is a ﬁctional company. For the purposes of this case study, the datasets are appropriate and will enable us to answer the business questions. The data has been made available by Motivate International Inc. under this license. This is public data that we can use to explore how diﬀerent customer types are using Cyclistic bikes. But note that data-privacy issues prohibit you from using riders’ personally identiﬁable information.



## Process

Since the data exceeds the free BigQuery sandbox limit, we will load the dataset into MYSQL Workbench to utilize SQL. Power BI Desktop was used to generate an interactive visualization or a dashboard.

Following are the procedures we followed to prepare the data for analysis:

SQL Query: [Data process](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/01_Data_Process.sql)

1.	Creating a database for this project
2.	Creating a table for the 12 CSV file from January 2021 to December 2021 and another table where we will merge the files and we will name the table public_bike.
3.	Importing for CSV file to MYSQL Workbench.
4.	Check the rows to make sure we imported the exact number of data
5.	Merging the 12 tables into one table
6.	Check the rows to make sure we merged the exact number of data
7.	Create a Column for ride length
8.	Deleting the negative values of time difference between started_at and ended_at so that we can add the values in the ride_lenght in order to avoid errors
9.	Adding values to ride_length
10.	Adding day_of_week column
11.	Checking if there are duplicate row before we analyze the data

## Analyze

Now that the data is stored appropriately and has been prepared for analysis. We will conduct a descriptive analysis.

Following are the procedures we followed for data analysis:

SQL Query: [Data analysis](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/02_Data_Analysis.sql)

1. Descriptive analysis on ride_length mean, median, max and min ride.
2. Analysis to see the average ride time by each day for member and casual users
3. Analysis of rider statistics by kind, weekday, number of rides and average duration
4. Analysis to identify which month is the busiest
5. Analysis to determine the mean distance traveled by members and casual riders. To compute for distance, we use Haversine formula.

## Share

After conducting the analysis and gaining some understanding of the data, we will next create visualizations to present our findings. We were reminded by Moreno that it needs to be sophisticated and polished in order to interact with the executive team.

Data Visualization: [Power BI](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/GDA_Cyclistic_Case_Study_Visualization.pbit)

Dashboard: 

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Untitled_001.jpg "Logo Title Text 1")

Comparison between Member and Casual user: 

There were more member users (3,065,746) than casual users (2,528,664). member made up 54.80% of the total number of users.

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Member%20Vs.%20Casual%20Rider.PNG)

Comparison of rides by bike type: 

Classic bike had the highest total Count at 3,250,746, followed by electric bike at 2,031,329 and docked bike at 312,335. Count of member and casual users and total Count of ride type are positively correlated with each other. member user in ride type  made up 35.47%. classic bike had the highest average Count at 1,625,373, followed by electric bike at 1,015,664.50 and docked bike at 156,167.50. 

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Rides%20by%20bike%20type.PNG)

Rides by Day: 

Saturday is the most popular day for both members and casual users, with a larger average user count for members (437,963.71) than casual (361,237.71). On Wednesday, the difference between member and casual users was the greatest, with member outnumbering casual users by 198,207.

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Rides%20by%20day.PNG)

Rides by Month:

July  accounted for 7.90% of the total count in member and casual users. Member users had a higher average count of 255,478.83 than casual users (210,722). The count of both users deviated the greatest in November, when member users was 146,076 more than casual  users.

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Rides%20by%20month.PNG)

Average ride:

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Average%20Rides%20in%20Minutes.PNG)

Median ride:

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Median%20in%20Minutes.PNG)

Max ride:

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Max%20ride%20in%20Days.PNG)

Average ride distance:

![alt text](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03_Data_Visualization/Average%20Distance%20in%20Kilometer.PNG)






## Act

We've completed our visualizations, and now it's time to put your results into practice. In addition to the three top recommendations derived from our study, we will generate the deliverables Morena requested us to produce.

To recommend effective marketing strategies aimed at converting casual riders into annual members, it is important to understand the key differences in how annual members and casual riders use Cyclistic bikes. Based on the given data, here are some insights and recommendations:

Usage patterns: Annual members are more frequent users of Cyclistic bikes, with higher average counts on all days of the week. On Saturdays, which is the most popular day for both member and casual users, the average count for members is higher than for casual users. This suggests that annual members are more likely to use Cyclistic bikes for regular commuting or other regular activities, while casual riders may be more likely to use them for leisure or occasional activities. To convert casual riders into annual members, Cyclistic could consider promoting the benefits of using bikes for regular transportation, such as cost savings, environmental benefits, and health benefits.

Ride types: Classic bikes are the most popular ride type for both annual members and casual riders, followed by electric bikes and docked bikes. However, annual members make up a higher percentage of users for all ride types, suggesting that they are more committed to using Cyclistic bikes for a variety of purposes. Cyclistic could consider offering promotions or discounts on ride types that are particularly popular with casual riders, such as electric bikes, to encourage them to become annual members.

Seasonal trends: Both annual members and casual riders are most active in July, and annual members have a higher average count than casual riders throughout the year. However, the difference in counts between annual members and casual riders is greatest in November. This suggests that casual riders may be less likely to use Cyclistic bikes in colder weather, while annual members may be more committed to using them year-round. Cyclistic could consider offering promotions or incentives to encourage casual riders to use bikes during the colder months, such as discounts on winter gear or free rides for a certain number of days.

User demographics: The given data does not provide information on user demographics, but understanding the characteristics of Cyclistic's user base could be important in developing targeted marketing strategies. For example, if Cyclistic's user base is predominantly young professionals, the marketing message could focus on the convenience and cost savings of using bikes for commuting. If the user base is more diverse, the marketing message could highlight the health benefits and accessibility of using bikes for a variety of activities.

In summary, to convert casual riders into annual members, Cyclistic could consider promoting the benefits of using bikes for regular transportation, offering promotions or discounts on popular ride types, offering incentives to use bikes year-round, and developing targeted marketing messages based on user demographics. By better understanding the differences in how annual members and casual riders use Cyclistic bikes, Cyclistic can develop effective marketing strategies to encourage more casual riders to become loyal annual members.




