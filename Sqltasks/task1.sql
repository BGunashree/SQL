CREATE DATABASE details;
CREATE TABLE movies_info(id int,m_name varchar(30),m_release_year int,m_director varchar(20),m_producer varchar(20));
ALTER TABLE movies_info ADD COLUMN m_hero varchar(20);
ALTER TABLE movies_info ADD COLUMN m_heroine varchar(20);
ALTER TABLE movies_info ADD COLUMN budget bigint,ADD COLUMN m_ticket_price bigint,ADD COLUMN is_released boolean;
ALTER TABLE movies_info RENAME COLUMN m_hero TO m_actor,RENAME COLUMN m_heroine TO m_actress,RENAME COLUMN m_release_year TO year_of_release,RENAME column m_name TO movie_name,RENAME COLUMN m_ticket_price TO m_crew_no ;
INSERT INTO movies_info VALUES(1,'KGF1',2018,'Prashant Neil','Vijay Kirgandur','Yash','Srinidhi Shetty',80000000,1000,true);
INSERT INTO movies_info VALUES(2,'KGF2',2021,'Prashant Neil','Vijay Kirgandur','Yash','Srinidhi Shetty',90000000,1000,true);
INSERT INTO movies_info VALUES(3,'Kantara',2022,'Rishab Shetty','Kishore','Rishab Shetty','Saptami',3000000,500,true);
INSERT INTO movies_info VALUES(4,'Kantara 2',2026,'Rishab Shetty','kishore','Rishab Shetty','Saptmai',80000000,800,false);
INSERT INTO movies_info VALUES(5,'Charlie777',2022,'Kiran raj','Guptha','Rakshit Shetty','Sangeetha',36000000,500,true);
INSERT INTO movies_info VALUES(6,'Kirik Party',2017,'Rishab Shetty','Pushkara','Rakshit Shetty','Rashmika Mandanna',2000000,300,true);
INSERT INTO movies_info VALUES(7,'Mafia',2024,'Ajay','Kishore','Prajwal Devaraj','Aditi Prabudheva',1000000,800,false);
INSERT INTO movies_info VALUES(8,'Bheema',2024,'Duniya Vijay','Krishna','Duniya Vijay','Ashwini',300000000,900,false);
INSERT INTO movies_info VALUES(9,'Maidaan',2024,'Amit Sharma','Boney Kapoor','Ajay Devgn','Priyamani',900000000,900,true);
INSERT INTO movies_info VALUES(10,'Toby',2023,'Raj B Shetty','Kishore','Raj B Shetty','Chaitra',4000000,1000,true);
select * from movies_info;

UPDATE movies_info SET year_of_release=2020 WHERE id=5;
UPDATE movies_info SET is_released=false WHERE movie_name='Maidaan';
update movies_info SET m_name='SideB' WHERE id=6;
update movies_info set m_actress='Samyuktha' WHERE id=6;
update movies_info set m_producer='Rishab' WHERE m_director='Prashant Neil' AND movie_name='KGF2';
update movies_info set m_crew_no=2000 WHERE id=2;
UPDATE movies_info set m_crew_no=6000 WHERE id=1;
update movies_info set m_producer='Guptha' where id=7 or m_director='Prashant Neil';
update movies_info set m_producer='Vijay' where movie_name='KGF1';
update movies_info set m_producer='Jagadeesh' where id=2;

delete from movies_info where id=9;
delete from movies_info where m_producer='kishore';
delete from movies_info where id=1 AND m_actor='Yash';

select * from movies_info;
select movie_name from movies_info where id=5;
select movie_name from movies_info where year_of_release=2024 AND m_producer='Guptha';
select movie_name from movies_info where year_of_release=2024 OR m_producer='Guptha';
select m_actor from movies_info where id in(1,2,6,5);
select is_released from movies_info where id NOT IN(2,5);


branch_name VARCHAR(50),address VARCHAR(50),balance BIGINT,minimum_balance INT,is_active BOOLEAN




CREATE TABLE bank_details (id int,bank_name VARCHAR(20),account_number bigint,account_holder_name VARCHAR(50),account_type VARCHAR(20));
desc bank_details;
alter table bank_details add column branch_name VARCHAR(50),add column address VARCHAR(50),add column balance BIGINT,add column minimum_balance INT,add column is_active BOOLEAN;
alter table bank_details rename column account_number to acc_number,rename column account_holder_name to acc_holder,rename column account_type to acc_type,rename column is_active to acc_active,rename column minimum_balance to min_balance;
alter table bank_details rename column address to branch_code;
INSERT INTO bank_details VALUES(1, 'SBI', 123456789012, 'Akshay', 'Savings', 'Vijayapura Branch', 'SBI001', 50000, 1000, TRUE);
INSERT INTO bank_details VALUES(2, 'HDFC', 234567890123, 'Sneha ', 'Checking', 'Koramangala Branch', 'HDFC001', 75000, 5000, TRUE);
INSERT INTO bank_details VALUES(3, 'ICICI', 345678901234, 'Rajesh Patel', 'Savings', 'Whitefield Branch', 'ICICI001', 30000, 1000, FALSE);
INSERT INTO bank_details VALUES(4, 'Axis', 456789012345, 'Lasya', 'Checking', 'MG Road Branch', 'AXIS001', 120000, 10000, TRUE);
INSERT INTO bank_details VALUES(5, 'Canara', 567890123456, 'Soujanya Reddy', 'Savings', 'Indiranagar Branch', 'CANARA001', 40000, 1000, TRUE);
INSERT INTO bank_details VALUES(6, 'Kotak', 678901234567, 'Gunashree', 'Checking', 'Vijayapura Branch', 'KOTAK001', 55000, 5000, FALSE);
INSERT INTO bank_details VALUES(7, 'PNB', 789012345678, 'Anil Kumar', 'Savings', 'Electronic City Branch', 'PNB001', 35000, 1000, TRUE);
INSERT INTO bank_details VALUES(8, 'Syndicate', 890123456789, 'Jayalakshmi', 'Checking', 'Yeshwanthpur Branch', 'SYN001 ', 45000, 5000, TRUE);
INSERT INTO bank_details VALUES(9, 'IDBI', 901234567890, 'Lakshmi', 'Savings', 'Rajajinagar Branch', 'IDBA001 ', 60000, 1000, FALSE);
INSERT INTO bank_details VALUES(10, 'Union', 123456789012, 'Anil', 'Checking', 'Malleshwaram Branch', 'UNION001 ', 70000, 5000, TRUE);

select * from bank_details;
update bank_details set acc_holder='Lavanya' where id=3;
update bank_details set acc_holder='Baiyanna' where id=2;
update bank_details set branch_name='Malleshwaram Branch' where id=1;
update bank_details set bank_name='Kotak' where acc_holder='Lakshmi';
update bank_details set acc_holder='Kishan' where bank_name='Kotak' and id=9;
update bank_details set branch_name='Yeshwanthpur' where id=6 OR id=9;
update bank_details set balance=100000 where acc_number=234567890123;
update bank_details set balance=0 where acc_number=567890123456;
update bank_details set branch_code='KOTAK001' where id=9;
update bank_details set min_balance='7000' where bank_name='Union';


delete from bank_details where id=3;
delete from bank_details where id=9 and acc_holder='Kishan';
delete from bank_details where acc_number=567890123456;

select * from bank_details;
select * from bank_details where id=6 and bank_name='Kotak';
select acc_holder from bank_details where id in(1,2,6,7);
select acc_number from bank_details where id=6 or bank_name='Kotak';
select * from bank_details where acc_type='Savings';
select * from bank_details where acc_type not in('Savings');

