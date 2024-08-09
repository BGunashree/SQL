CREATE DATABASE airport;
create table employee_details(emp_id int,emp_name varchar(20),salary bigint,phone bigint,age int);
create table airport_details(id int,airport_name varchar(20),location varchar(20),country varchar(15),airport_code varchar(20));
ALTER TABLE employee_details ADD column gender varchar(10),ADD column address varchar(50),ADD column position varchar(10),ADD column dob DATE,ADD column department varchar(20);
ALTER TABLE employee_details DROP COLUMN age, DROP COLUMN gender;
ALTER TABLE employee_details RENAME COLUMN emp_name TO ename,RENAME COLUMN dob TO dateofbirth,RENAME COLUMN phone TO phone_num,RENAME COLUMN emp_id TO employee_id,RENAME COLUMN department TO dept;
ALTER TABLE employee_details MODIFY ename char(30),MODIFY employee_id bigint,MODIFY salary int,MODIFY dateofbirth DATETIME,MODIFY address char(100);

ALTER TABLE airport_details ADD COLUMN state varchar(20),ADD COLUMN airport_zipcode varchar(10),ADD COLUMN established_date date,ADD COLUMN runway_count int,ADD COLUMN terminal_count int;
ALTER TABLE airport_details DROP COLUMN state,DROP COLUMN airport_code; 
ALTER TABLE airport_details RENAME COLUMN airport_name TO nameof_airport,RENAME COLUMN location to place_located,RENAME COLUMN id TO airport_id,RENAME COLUMN established_date to dateof_establishment,RENAME COLUMN airport_zipcode to zipcode;
ALTER TABLE airport_details MODIFY COLUMN airport_id bigint,MODIFY COLUMN dateof_establishment datetime,MODIFY COLUMN zipcode bigint,MODIFY COLUMN runway_count bigint,MODIFY COLUMN terminal_count bigint;