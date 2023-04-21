--- Create Database
CREATE DATABASE <NAME>;

--- Delete Database
DROP DATABASE <NAME>;

--- Use Database
USE <DATABASE NAME>;

--- Or Double click the database

--- To know what database is using
SELECT database();

--- Create table
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);
/* Example
CREATE TABLE cats
(
	name VARCHAR(100),
    	age int
);

-- more samples
CREATE TABLE employees (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);

--- Show table from current database
SHOW TABLES;

--- To show details of clomuns
SHOW COLUMNS FROM <tablename>;

--- or
DESC <tablename>;

-- insert data to table sample
INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);

-- CRUD - Create, Read, Update and Delete

-- setting alias
	use  AS

-- Updating table
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;


-- sample
UPDATE cats SET age= 12 WHERE breed='Maine Coon';

-- Delete in table
DELETE FROM table_name WHERE condition;

-- sample
DELETE FROM cats WHERE name='Egg';

-- delete data in table
DELETE FROM cats;

time stamps
-- What's a good use case for CHAR?
 
-- Used for text that we know has a fixed length, e.g., State abbreviations, 
-- abbreviated company names, etc.
 
CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);
 
-- What's the difference between DATETIME and TIMESTAMP?
 
-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.
 
 
SELECT CURTIME();
 
SELECT CURDATE();
 
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;
 
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');
 
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
 
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
 
CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);
 
INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
 
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;


--JOIN sample
SELECT A.first_name, B.title, B.grade
FROM A
JOIN B
ON A.id = B.student_id;


--View/temporary table 
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

--sample
CREATE VIEW full_reviews AS
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;
 
--update or replace view
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

--delete view
DROP VIEW ordered_series;

--HAVING clause
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition

--sample
SELECT 
    title, 
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews 
GROUP BY title HAVING COUNT(rating) > 1;


-- with roll up
SELECT 
    title, COUNT(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;


-- To View Modes:
SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;
 
-- To Set Them:
SET GLOBAL sql_mode = 'modes';
SET SESSION sql_mode = 'modes';


-- over by and partition
SELECT 
    emp_no, 
    department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department) AS dept_payroll,
    SUM(salary) OVER() AS total_payroll
FROM employees;


-- order by with windows
SELECT 
    emp_no, 
    department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM employees;

--or
SELECT 
    emp_no, 
    department, 
    salary, 
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) as rolling_min
FROM employees;
