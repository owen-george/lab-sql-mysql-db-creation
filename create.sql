CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (id int not null auto_increment primary key,
	vin char(255) not null,
	manufacturer char(255) not null,
	model char(255) not null, 
	year year not null,
	color char(255)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (id int not null auto_increment primary key,
	staff_id bigint not null,
    name char(255) not null,
    store char(255) not null
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (id int not null auto_increment primary key,
	cust_id int not null, cust_name char(255) not null, 
	cust_phone char(255), cust_email char(255), cust_address char(255),
	cust_city char(255), cust_state char(255), cust_country char(255), cust_zipcode char(255)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
	id int not null auto_increment primary key,
	invoice_number bigint not null,
	date date not null,
    car bigint not null,
	customer bigint not null,
	salesperson bigint not null,
    CONSTRAINT fk_car FOREIGN KEY (car) REFERENCES cars(id),
    CONSTRAINT fk_customer FOREIGN KEY (customer) REFERENCES customers(id),
    CONSTRAINT fk_salesperson FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);