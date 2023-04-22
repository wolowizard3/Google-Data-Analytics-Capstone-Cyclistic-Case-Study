-- Now that the data is stored appropriately and has been prepared for analysis. We will conduct a descriptive analysis.

-- Descriptive analysis on ride_length mean, median, max and min ride.
-- computing for mean in minutes

SELECT ROUND(AVG(ride_length)/60, 2) AS mean FROM public_bike;

-- computing for median in minutes

SELECT  ROUND(ride_length, 2)/60 AS median FROM
(SELECT  ROUND(ROW_NUMBER() OVER (ORDER BY ride_length ASC), 2) AS RNK, ride_length FROM public_bike)  A 
WHERE RNK = ( SELECT  ROUND ( COUNT(*)/2, 2) FROM public_bike);

-- computing for MAX in days

SELECT ROUND(MAX(ride_length)/86400, 2) as max_ride FROM public_bike;

-- computing for MIN in seconds

SELECT ROUND(MIN(ride_length), 2) as min_ride FROM public_bike;

-- to summarize mean, median, min and max ride for member and casual riders

SELECT member_casual,
  ROUND(AVG(ride_length)/60, 2) AS mean_minutes,
  (SELECT ROUND(ride_length, 2)/60 AS median FROM
  (SELECT  ROUND(ROW_NUMBER() OVER (ORDER BY ride_length ASC), 2) AS RNK, ride_length FROM public_bike)  A 
	WHERE RNK = ( SELECT  ROUND ( COUNT(*)/2, 2) FROM public_bike)) AS mean_minutes,
  ROUND(MAX(ride_length)/86400, 2) AS max_ride_days,
  ROUND(MIN(ride_length), 2) AS min_ride_seconds
FROM public_bike
GROUP BY member_casual;


-- Analysis to see the average ride time by each day for member and casual users

SELECT 
	member_casual, 
    CASE day_of_week
	WHEN 1 THEN 'Sunday'
	WHEN 2 THEN 'Monday'
	WHEN 3 THEN 'Tuesday'
	WHEN 4 THEN 'Wednesday'
	WHEN 5 THEN 'Thursday'
	WHEN 6 THEN 'Friday'
	WHEN 7 THEN 'Saturday'
	END AS 'week', 
    ROUND(AVG(ride_length)/60, 2) AS avg_ride_length_minutes
FROM public_bike
GROUP BY member_casual, day_of_week
ORDER BY day_of_week;

-- Analysis of rider statistics by kind, weekday, number of rides and average duration

SELECT 
  member_casual, 
  DATE_FORMAT(started_at, '%W') AS weekday, 
  COUNT(*) AS number_of_rides,
  AVG(ride_length) AS average_duration
FROM 
  public_bike
GROUP BY 
  member_casual, 
  DATE_FORMAT(started_at, '%W')
ORDER BY 
  member_casual, 
  DATE_FORMAT(started_at, '%w');


-- To identify which month is the busiest

SELECT 
	member_casual,
	MONTHNAME(ended_at) AS month,
    ROUND(AVG(ride_length)/60, 2) AS avg_ride_length_minutes
FROM public_bike
GROUP BY member_casual, MONTH(ended_at)
ORDER BY avg_ride_length_minutes DESC;




-- To determine the mean distance traveled by members and casual riders
-- first we need to create a view for distance travel and member_casual table
-- to compute for distance we use Haversine formula

CREATE OR REPLACE VIEW distance AS
SELECT 
	member_casual,
    6371 * 2 * ASIN(
        SQRT(
            POWER(SIN((start_lat - ABS(end_lat)) * PI() / 180 / 2), 2) +
            COS(start_lat * PI() / 180) * COS(ABS(end_lat) * PI() / 180) *
            POWER(SIN((start_lng - end_lng) * PI() / 180 / 2), 2)
        )
    ) AS distance_km
FROM public_bike
ORDER BY distance_km;

-- to check the average distance of casual and member

SELECT
	member_casual,
    ROUND(AVG(distance_km), 2) AS ave_distance_km
FROM distance
GROUP BY member_casual;
