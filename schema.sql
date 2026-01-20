CREATE DATABASE moto_taxi;
USE moto_taxi;


CREATE TABLE IF NOT EXISTS  riders (
    rider_id INT PRIMARY KEY,
    fullname VARCHAR(100),
    license_number VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS passengers (
    passenger_id INT PRIMARY KEY,
    fullname VARCHAR(100),
    phone INT(20)
);

CREATE TABLE IF NOT EXISTS trips (
    trip_id INT PRIMARY KEY,
    rider_id INT NOT NULL,
    passenger_id INT NOT NULL,
    price DECIMAL(10,2),
    trip_date DATETIME,
    FOREIGN KEY (rider_id) REFERENCES riders(rider_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);


