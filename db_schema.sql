create database CS581project;

use CS581project;


create table trip_info(
trip_id int NOT NULL auto_increment,
pickup_datetime DATETIME NOT NULL,
dropoff_datetime DATETIME NOT NULL,
passenger_count int NOT NULL,
trip_dist double NOT NULL,
pickup_long double NOT NULL,
pickup_lat double NOT NULL,
dropoff_long double NOT NULL,
dropoff_lat double NOT NULL,
pay_type int NOT NULL,
total_amt double NOT NULL,
PRIMARY KEY(trip_id)
);


LOAD DATA INFILE 'PATH-TO-yellow_tripdata_2016-01_cleaned.csv'
INTO TABLE trip_info
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

select * from trip_info;

