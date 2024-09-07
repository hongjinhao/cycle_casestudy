show databases;
create database cycle;
use cycle;
show tables;
DROP TABLE month12; 
CREATE TABLE month12 (
	id int, 
	ride_id VARCHAR(255) PRIMARY KEY, 
    rideable_type VARCHAR(255), 
    started_at DATETIME,
    ended_at DATETIME,
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(255),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(255), 
    start_lat VARCHAR(255), 
    start_lng VARCHAR(255), 
    end_lat VARCHAR(255), 
    end_lng VARCHAR(255), 
    member_casual VARCHAR(20), 
    Start DATETIME, 
    End DATETIME, 
    Duration VARCHAR(20), 
    DayOfWeek VARCHAR(20)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_2024-03.csv'
INTO TABLE month12
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

DESCRIBE month12;

SELECT * FROM month12 LIMIT 100;

ALTER TABLE month12 ADD ride_length TIME;

