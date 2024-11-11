CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (id bigint, vin char(255), manufacturer char(255), model char(255), year year, color char(255),
PRIMARY KEY (id));

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (id bigint, staff_id bigint, name char(255), store char(255),
primary key (id));

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (id bigint, cust_id bigint, cust_name char(255), 
cust_phone char(255), cust_email char(255), cust_address char(255),
cust_city char(255), cust_state char(255), cust_country char(255), cust_zipcode char(255),
primary key (id));

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (id bigint, invoice_number bigint, date date, car bigint, 
customer bigint, salesperson bigint,
PRIMARY KEY (id));