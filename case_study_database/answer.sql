create database case_study;
use case_study;
create table employee(
`employee_code` int not null primary key ,
name varchar(50));
create table customer(
customer_code int not null primary key,
name varchar(50));
create table customer_order(
customer_use_code int not null primary key,
name varchar(50),
count_use varchar(50));
