CREATE DATABASE calidad_aire;
USE calidad_aire;

-- 🧱 Estructura general del modelo E-R

CREATE TABLE location (
  location_id INT AUTO_INCREMENT PRIMARY KEY,
  state_code INT,
  county_code INT,
  state_name VARCHAR(100),
  county_name VARCHAR(100),
  latitude DECIMAL(10,6),
  longitude DECIMAL(10,6),
  datum VARCHAR(10)
);


CREATE TABLE station (
  station_id INT AUTO_INCREMENT PRIMARY KEY,
  site_num INT,
  location_id INT,
  FOREIGN KEY (location_id) REFERENCES location(location_id)
);


CREATE TABLE parameter (
  parameter_id INT AUTO_INCREMENT PRIMARY KEY,
  parameter_code INT,
  parameter_name VARCHAR(100)
);


CREATE TABLE method (
  method_id INT AUTO_INCREMENT PRIMARY KEY,
  method_code INT,
  method_name TEXT,
  method_type VARCHAR(50)
);


CREATE TABLE measurement (
  measurement_id INT AUTO_INCREMENT PRIMARY KEY,
  station_id INT,
  parameter_id INT,
  method_id INT,
  poc INT,
  date_local DATE,
  value FLOAT,
  unit VARCHAR(50),
  mdl FLOAT,
  uncertainty VARCHAR(50),
  qualifier VARCHAR(50),
  date_last_change DATE,
  FOREIGN KEY (station_id) REFERENCES station(station_id),
  FOREIGN KEY (parameter_id) REFERENCES parameter(parameter_id),
  FOREIGN KEY (method_id) REFERENCES method(method_id)
);


CREATE TABLE aqi_cbsa (
  aqi_cbsa_id INT AUTO_INCREMENT PRIMARY KEY,
  cbsa_code INT,
  cbsa_name VARCHAR(100),
  date DATE,
  aqi INT,
  category VARCHAR(50),
  defining_parameter VARCHAR(50),
  defining_site VARCHAR(50),
  sites_reporting INT
);


CREATE TABLE aqi_county (
  aqi_county_id INT AUTO_INCREMENT PRIMARY KEY,
  state_code INT,
  county_code INT,
  date DATE,
  aqi INT,
  category VARCHAR(50),
  defining_parameter VARCHAR(50),
  defining_site VARCHAR(50),
  sites_reporting INT
);
