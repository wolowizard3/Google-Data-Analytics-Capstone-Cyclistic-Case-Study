# Google Data Analytics Capstone Cyclistic Case Study

## Introduction

Welcome to the Cyclistic bike-share analysis case study! In this case study, we will perform many real-world tasks of a junior data analyst. We will work for a ﬁctional company, Cyclistic, and meet diﬀerent characters and team members. In order to answer the key business questions, we will follow the steps of the data analysis process: [Ask](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#ask), [Prepare](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#prepare), [Process](#emphasis), [Analyze](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#analyze), [Share](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#share), and [Act](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#act).

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

1. Descriptive analysis on ride_length mean, median, max and min ride.
2. Analysis to see the average ride time by each day for member and casual users
3. Analysis of rider statistics by kind, weekday, number of rides and average duration
4. Analysis to identify which month is the busiest
5. Analysis to determine the mean distance traveled by members and casual riders. To compute for distance, we use Haversine formula.

## Share

After conducting the analysis and gaining some understanding of the data, we will next create visualizations to present our findings. We were reminded by Moreno that it needs to be sophisticated and polished in order to interact with the executive team.



## Act

We've completed our visualizations, and now it's time to put your results into practice. In addition to the three top recommendations derived from our study, we will generate the deliverables Morena requested us to produce.




[Data process Documentation](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/01_Data_Process.sql)

[Data analysis documentation](https://github.com/wolowizard3/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/02_Data_Analysis.sql)


