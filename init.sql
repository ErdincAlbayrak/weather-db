DROP DATABASE IF EXISTS weatherdb;
CREATE DATABASE weatherdb;

DROP ROLE IF EXISTS weatheruser;
CREATE ROLE weatheruser WITH LOGIN SUPERUSER PASSWORD 'weatheruser';

GRANT ALL PRIVILEGES ON DATABASE weatherdb TO weatheruser;
\c weatherdb weatheruser;

DROP TABLE IF EXISTS weather;
CREATE TABLE IF NOT EXISTS weather (
	city VARCHAR(50) NOT NULL,
	wdate DATE NOT NULL,
	forecast VARCHAR(50),
	low int NOT NULL,
	high int NOT NULL,
	PRIMARY KEY(city,wdate)
	);	

INSERT INTO weather(city,wdate,forecast,low,high) VALUES ('Ankara','2021-03-27','Snow',8,-3);
INSERT INTO weather(city,wdate,forecast,low,high) VALUES ('Ankara','2021-03-28','Rainy',12,2);
INSERT INTO weather(city,wdate,forecast,low,high) VALUES ('Ankara','2021-03-29','Snow',10,-1);
INSERT INTO weather(city,wdate,forecast,low,high) VALUES ('Ankara','2021-03-30','Cloudy',14,4);
INSERT INTO weather(city,wdate,forecast,low,high) VALUES ('Istanbul','2021-03-27','Rainy',17,6);
INSERT INTO weather(city,wdate,forecast,low,high) VALUES ('Istanbul','2021-03-28','Rainy',18,8);
INSERT INTO weather(city,wdate,forecast,low,high) VALUES ('Istanbul','2021-03-29','Sunny',23,10);
INSERT INTO weather(city,wdate,forecast,low,high) VALUES ('Istanbul','2021-03-30','Cloudy',19,11);
