-- Creating a database for this project
CREATE DATABASE bike_share;

-- Creating a table for the 12 CSV file from January 2021 to December 2021 and another table where we will merge the files
-- we will name the table public_bike.
CREATE TABLE public_bike
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE jan
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE feb
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE mar
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE apr
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE may
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE jun
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE jul
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE aug
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE sep
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE oct
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE nov
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

CREATE TABLE dece
(
    ride_id VARCHAR(100) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(20)
);

-- Importing for CSV file to MYSQL Workbench.

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\1_JAN_2021.csv' INTO TABLE jan FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\2_FEB_2021.csv' INTO TABLE feb FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\3_MAR_2021.csv' INTO TABLE mar FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\4_APR_2021.csv' INTO TABLE apr FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\5_MAY_2021.csv' INTO TABLE may FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\6_JUN_2021.csv' INTO TABLE jun FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\7_JUL_2021.csv' INTO TABLE jul FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\8_AUG_2021.csv' INTO TABLE aug FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\9_SEP_2021.csv' INTO TABLE sep FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\10_OCT_2021.csv' INTO TABLE oct FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\11_NOV_2021.csv' INTO TABLE nov FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\bike_share\\12_DEC_2021.csv' INTO TABLE dece FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

-- Check the rows to make sure we imported the exact number of data

SELECT COUNT(ride_id) FROM jan; 
SELECT COUNT(ride_id) FROM feb;
SELECT COUNT(ride_id) FROM mar;
SELECT COUNT(ride_id) FROM apr;
SELECT COUNT(ride_id) FROM may;
SELECT COUNT(ride_id) FROM jun;
SELECT COUNT(ride_id) FROM jul;
SELECT COUNT(ride_id) FROM aug;
SELECT COUNT(ride_id) FROM sep;
SELECT COUNT(ride_id) FROM oct;
SELECT COUNT(ride_id) FROM nov;
SELECT COUNT(ride_id) FROM dece;

--  Merging the 12 tables into one table

INSERT INTO public_bike (ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM jan
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM feb
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM mar
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM apr
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM may
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM jun
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM jul
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM aug
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM sep
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM oct
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM nov
UNION ALL
SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual FROM dece;

-- Check the rows to make sure we merged the exact number of data

SELECT COUNT(ride_id) FROM public_bike; 

-- Create a Column for ride length

ALTER TABLE public_bike
ADD ride_length TIMESTAMP;

-- Deleting the negative values of time difference between started_at and ended_at so that we can add the values in the ride_lenght in order to avoid errors

DELETE FROM public_bike
WHERE TIMESTAMPDIFF(SECOND, started_at, ended_at) <= 0;

-- Adding values to ride_length

UPDATE public_bike
SET ride_length = TIMESTAMPDIFF(MINUTE, started_at, ended_at);

-- Adding day_of_week column

ALTER TABLE public_bike ADD COLUMN day_of_week INT;
UPDATE public_bike SET day_of_week = WEEKDAY(started_at) + 1;

-- Checking if there are duplicate row before we analyze the data

SELECT ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual, COUNT(*) as count
FROM public_bike
GROUP BY ride_id, rideable_type, started_at, ended_at, ride_length, day_of_week, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
HAVING COUNT(*) > 1;

-- Now the data is ready for analysis.
--Test of changes
