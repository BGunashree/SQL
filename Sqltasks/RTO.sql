create database RTO;
use RTO;

create table LLR_INFO (LLR_id int,applicant_name varchar(50),dob date,address varchar(35),
contact_no varchar(15),email varchar(100),application_date date,issued_date date,expiry_date date,llr_status varchar(50),primary key(LLR_id));
alter table LLR_INFO modify column contact_no bigint;
desc LLR_INFO;

create table LLR_TEST_INFO (t_id int,LLR_id int,t_date date,t_result varchar(50),t_score int,t_center varchar(30),
tester_name varchar(20),remarks varchar(20),next_test_date date,vehicle_type varchar(20),primary key(t_id),
foreign key (LLR_id) references LLR_INFO(LLR_id) on delete cascade on update cascade);

desc LLR_TEST_INFO;
drop table LLR_TEST_INFO;
drop table LLR_INFO;
drop table DRIVING_LICENCE_INFO;
drop table DRIVING_LICENSE_TEST_INFO;

create table DRIVING_LICENCE_INFO (dl_id int,t_id int,LLR_id int,applicant_name varchar(30),applicant_address varchar(35),
applicant_dob date,applicant_contact bigint,issue_date date,Expiry_Date date,Vehicle_Type varchar(20),
Issuing_Authority varchar(40),primary key(dl_id),foreign key  (t_id) references LLR_TEST_INFO(t_id) on delete cascade on update cascade,
foreign key  (LLR_id) references LLR_INFO(LLR_id) on delete cascade on update cascade);
desc DRIVING_LICENCE_INFO;

create table DRIVING_LICENSE_TEST_INFO (
    dl_id int,
    test_date date,
    test_result varchar(10),
    test_score int,
    examiner_name varchar(50),
    examiner_contact varchar(50),
    test_Center varchar(100),
    Vehicle_Type varchar(50),
    Remarks varchar(255),
    Duration varchar(10),
    foreign key (dl_id) references DRIVING_LICENCE_INFO(dl_id) on delete cascade on update cascade
);

desc DRIVING_LICENSE_TEST_INFO;

insert into LLR_INFO values(1, 'Amit', '2001-01-15', 'MG Road',9876543210, 'amit.sharma@gmail.com', '2024-01-10', '2024-01-15', '2026-01-15', 'Issued');
insert into LLR_INFO values(2, 'Sita', '1990-02-20', 'Brigade Road',9876543211, 'sita.rao@gmail.com', '2024-02-05', '2024-02-10', '2026-02-10', 'Issued');
insert into LLR_INFO values(3, 'Raj Kumar', '1982-03-25', ' Cunningham Road',9876543212, 'raj.kumar@gmail.com', '2024-03-15', '2024-03-20', '2026-03-20', 'Issued');
insert into LLR_INFO values(4, 'Neha', '1995-04-30', 'Ulsoor Road',9876543213, 'neha.desai@gmail.com', '2024-04-10', '2024-04-15', '2026-04-15', 'Issued');
insert into LLR_INFO values(5, 'Vijay', '1988-05-14', 'Indiranagar',9876543214, 'vijay.singh@gmail.com', '2024-05-12', '2024-05-17', '2026-05-17', 'Issued');
insert into LLR_INFO values(6, 'Pooja', '1992-06-19', 'Jayanagar',9876543215, 'pooja.patel@gmail.com', '2024-06-08', '2024-06-13', '2026-06-13', 'Issued');
insert into LLR_INFO values(7, 'Manoj', '2002-07-23', 'Koramangala',9876543216, 'manoj.mehta@gmail.com', '2024-07-09', '2024-07-14', '2026-07-14', 'Issued');
insert into LLR_INFO values(8, 'Kavita', '1991-08-18', 'Whitefield',9876543217, 'kavita.agarwal@gmail.com', '2024-08-10', '2024-08-15', '2026-08-15', 'Issued');
insert into LLR_INFO values(9, 'Suresh Reddy', '1987-09-22', 'Bellandur',9876543218, 'suresh.reddy@gmail.com', '2024-09-05', '2024-09-10', '2026-09-10', 'Issued');
insert into LLR_INFO values(10, 'Rita', '2003-10-30', 'HSR Layout',9876543219, 'rita.verma@gmail.com', '2024-10-07', '2024-10-12', '2026-10-12', 'Issued');
insert into LLR_INFO values(11, 'Arun Kumar', '1986-11-11', 'BTM Layout',9876543220, 'arun.kumar@gmail.com', '2024-11-09', '2024-11-14', '2026-11-14', 'Issued');
insert into LLR_INFO values(12, 'Swati', '1994-12-25', 'Rajajinagar',9876543221, 'swati.sharma@gmail.com', '2024-12-10', '2024-12-15', '2026-12-15', 'Issued');
insert into LLR_INFO values(13, 'Kiran', '1983-01-20', 'Malleshwaram',9876543222, 'kiran.rao@gmail.com', '2024-01-05', '2024-01-10', '2026-01-10', 'Issued');
insert into LLR_INFO values(14, 'Anita', '1990-02-14', 'Bannerghatta Road',9876543223, 'anita.rao@gmail.com', '2024-02-12', '2024-02-17', '2026-02-17', 'Issued');
insert into LLR_INFO values(15, 'Rajesh', '2000-03-30', 'Madiwala',9876543224, 'rajesh.patel@gmail.com', '2024-03-11', '2024-03-16', '2026-03-16', 'Issued');
insert into LLR_INFO values(16, 'Meera', '1992-04-25', 'Peenya',9876543225, 'meera.nair@gmail.com', '2024-04-08', '2024-04-13', '2026-04-13', 'Issued');
insert into LLR_INFO values(17, 'Vikram', '1985-05-12', 'Malleswaram',9876543226, 'vikram.singh@gmail.com', '2024-05-09', '2024-05-14', '2026-05-14', 'Issued');
insert into LLR_INFO values(18, 'Ranjana', '1991-06-22', 'HSR Layout',9876543227, 'ranjana.sharma@gmail.com', '2024-06-14', '2024-06-19', '2026-06-19', 'Issued');
insert into LLR_INFO values(19, 'Sandeep Kumar', '1989-07-28', 'Wilson Garden',9876543228, 'sandeep.kumar@gmail.com', '2024-07-11', '2024-07-16', '2026-07-16', 'Issued');
insert into LLR_INFO values(20, 'Deepa Reddy', '1995-08-19', 'Marathahalli',9876543229, 'deepa.reddy@gmail.com', '2024-08-13', '2024-08-18', '2026-08-18', 'Issued');

select * from LLR_INFO;

insert into LLR_TEST_INFO values(101, 1, '2024-01-12', 'Pass', 85, 'Jaynagar', 'Ravi Kumar', 'Well done', '2024-07-12', 'Car');
insert into LLR_TEST_INFO values(102, 2, '2024-02-08', 'Pass', 90, 'Kr puram', 'Anjali', 'Good performance', '2024-08-08', 'Bike');
insert into LLR_TEST_INFO values(103, 3, '2024-03-18', 'Fail', 45, 'Electronic city', 'Sanjay', 'Needs improvement', '2024-09-18', 'Car');
insert into LLR_TEST_INFO values(104, 4, '2024-04-12', 'Pass', 80, 'Avalahalli', 'Sunita Desai', 'Satisfactory', '2024-10-12', 'Bike');
insert into LLR_TEST_INFO values(105, 5, '2024-05-16', 'Pass', 87, 'Vijaynagar', 'Anil', 'Excellent', '2024-11-16', 'Car');
insert into LLR_TEST_INFO values(106, 6, '2024-06-14', 'Pass', 82, 'Bhattarahalli', 'Pooja', 'Good', '2024-12-14', 'Bike');
insert into LLR_TEST_INFO values(107, 7, '2024-07-15', 'Fail', 55, 'Avalahalli', 'Nikhil', 'Below average', '2025-01-15', 'Car');
insert into LLR_TEST_INFO values(108, 8, '2024-08-11', 'Pass', 88, 'Vijaynagar', 'Akshay', 'Very good', '2025-02-11', 'Bike');
insert into LLR_TEST_INFO values(109, 9, '2024-09-10', 'Pass', 84, 'Malleshwaram', 'Rajesh Kumar', 'Well done', '2025-03-10', 'Car');
insert into LLR_TEST_INFO values(110, 10, '2024-10-13', 'Fail', 60, 'Yelahanka', 'Veena', 'Needs more practice', '2025-04-13', 'Bike');
insert into LLR_TEST_INFO values(111, 11, '2024-11-09', 'Pass', 76, 'Hebbal', 'Suresh Reddy', 'Good', '2025-05-09', 'Car');
insert into LLR_TEST_INFO values(112, 12, '2024-12-12', 'Pass', 92, 'Bhattarahalli', 'Arun Kumar', 'Excellent', '2025-06-12', 'Bike');
insert into LLR_TEST_INFO values(113, 13, '2024-01-11', 'Fail', 50, 'Hoskote', 'Mohak', 'Needs improvement', '2025-07-11', 'Car');
insert into LLR_TEST_INFO values(114, 14, '2024-02-09', 'Pass', 85, 'Rt nagar', 'Jaya', 'Good', '2025-08-09', 'Bike');
insert into LLR_TEST_INFO values(115, 15, '2024-03-20', 'Pass', 80, 'Kr puram', 'Vivek', 'Satisfactory', '2025-09-20', 'Car');
insert into LLR_TEST_INFO values(116, 16, '2024-04-15', 'Fail', 57, 'Electronic city', 'Ranjana', 'Below average', '2025-10-15', 'Bike');
insert into LLR_TEST_INFO values(117, 17, '2024-05-17', 'Pass', 91, 'Bangalore RTO Center 2', 'Sandeep Kumar', 'Excellent', '2025-11-17', 'Car');
insert into LLR_TEST_INFO values(118, 18, '2024-06-18', 'Pass', 83, 'Rajajinagar', 'Deepa Reddy', 'Good performance', '2026-01-18', 'Bike');
insert into LLR_TEST_INFO values(119, 19, '2024-07-12', 'Fail', 48, 'Bangalore', 'Moksha', 'Needs improvement', '2026-02-12', 'Car');
insert into LLR_TEST_INFO values(200, 20, '2024-08-14', 'Pass', 89, 'Bangalore', 'Anvitha', 'Very good', '2026-03-14', 'Bike');



insert into DRIVING_LICENCE_INFO  values(201, 101, 1, 'Amit', 'MG Road', '2001-01-15', 9876543210, '2024-01-20', '2029-01-20', 'Car', 'Jaynagar');
insert into DRIVING_LICENCE_INFO  values(202, 102, 2, 'Sita', 'Brigade Road', '1990-02-20',9876543211, '2024-02-20', '2029-02-20', 'Bike', 'Kr puram');
insert into DRIVING_LICENCE_INFO  values(203, 104, 4, 'Neha', 'Ulsoor Road', '1995-04-30',9876543213, '2024-04-20', '2029-04-20', 'Bike', 'Avalahalli');
insert into DRIVING_LICENCE_INFO  values(204, 105, 5, 'Vijay', 'Indiranagar', '1988-05-14',9876543214, '2024-05-20', '2029-05-20', 'Car', 'Vijayanagar');
insert into DRIVING_LICENCE_INFO  values(205, 106, 6, 'Pooja', 'Jayanagar', '1992-06-19',9876543215, '2024-06-20', '2029-06-20', 'Bike', 'Bhattarahalli');
insert into DRIVING_LICENCE_INFO  values(206, 108, 8, 'Kavita', 'Whitefield', '1991-08-18',9876543217, '2024-08-20', '2029-08-20', 'Bike', 'Vijayanagar');
insert into DRIVING_LICENCE_INFO  values(207, 109, 9, 'Suresh Reddy', 'Bellandur', '1987-09-22',9876543218, '2024-09-20', '2029-09-20', 'Car', 'Malleshwaram');
insert into DRIVING_LICENCE_INFO  values(208, 111, 11, 'Arun Kumar', 'BTM Layout', '1986-11-11',9876543220, '2024-11-20', '2029-11-20', 'Car', 'Hebbal');
insert into DRIVING_LICENCE_INFO  values(209, 112, 12, 'Swati', 'Rajajinagar', '1994-12-25',9876543221, '2024-12-20', '2029-12-20', 'Bike', 'Bhattarahalli');
insert into DRIVING_LICENCE_INFO  values(210, 114, 14, 'Anita', 'Bannerghatta Road', '1990-02-14',9876543223, '2024-02-20', '2029-02-20', 'Bike', 'Rt nagar');
insert into DRIVING_LICENCE_INFO  values(211, 115, 15, 'Rajesh', 'Madiwala', '2000-03-30',9876543224, '2024-03-20', '2029-03-20', 'Car', 'Kr puram');
insert into DRIVING_LICENCE_INFO  values(212, 116, 16, 'Meera', 'Peenya', '1992-04-25',9876543225, '2024-04-20', '2029-04-20', 'Bike', 'Electronic city');
insert into DRIVING_LICENCE_INFO  values(213, 117, 17, 'Vikram', 'Malleswaram', '1985-05-12',9876543226, '2024-05-20', '2029-05-20', 'Car', 'Bangalore RTO Center 2');
insert into DRIVING_LICENCE_INFO  values(214, 118, 18, 'Ranjana', 'HSR Layout', '1991-06-22',9876543227, '2024-06-20', '2029-06-20', 'Bike', 'Rajajinagar');
insert into DRIVING_LICENCE_INFO  values(215, 119, 19, 'Sandeep Kumar', 'Wilson Garden', '1989-07-28', 9876543228, '2024-07-20', '2029-07-20', 'Car', 'Bangalore');
insert into DRIVING_LICENCE_INFO  values(216, 200, 20, 'Deepa Reddy', 'Marathahalli', '1995-08-19',9876543229, '2024-08-20', '2029-08-20', 'Bike', 'Bangalore');
insert into DRIVING_LICENCE_INFO  values(217, 103, 3, 'Raj Kumar', 'Cunningham Road', '1982-03-25',9876543212, '2024-03-25', '2029-03-25', 'Car', 'Electronic city');
insert into DRIVING_LICENCE_INFO  values(218, 107, 7, 'Manoj', 'Koramangala', '2002-07-23',9876543216, '2024-07-23', '2029-07-23', 'Car', 'Bangalore RTO');
insert into DRIVING_LICENCE_INFO  values(219, 110, 10, 'Rita', 'HSR Layout', '2003-10-30',9876543219, '2024-10-30', '2029-10-30', 'Bike', 'Bangalore RTO');
insert into DRIVING_LICENCE_INFO  values(300, 113, 13, 'Kiran', 'Malleshwaram', '1983-01-20',9876543222, '2024-01-20', '2029-01-20', 'Car', 'Bangalore RTO');


select * from  DRIVING_LICENCE_INFO;

insert into DRIVING_LICENSE_TEST_INFO values(201, '2024-01-25', 'Pass', 90, 'Ravi Kumar',9876543210, 'Jaynagar', 'Car', 'Excellent', '30 mins');
insert into DRIVING_LICENSE_TEST_INFO values(202, '2024-02-25', 'Pass', 88, 'Anjali',9876543211, 'Kr puram', 'Bike', 'Smoothe', '25 mins');
insert into DRIVING_LICENSE_TEST_INFO values(203, '2024-03-25', 'Pass', 85, 'Sanjay',9876543212, 'Electronic city', 'Car', 'Good controls', '28 mins');
insert into DRIVING_LICENSE_TEST_INFO values(204, '2024-04-25', 'Pass', 87, 'Sunita Desai',9876543213, 'Avalahalli', 'Bike', 'Excellent', '25 mins');
insert into DRIVING_LICENSE_TEST_INFO values(205, '2024-05-25', 'Pass', 92, 'Arun',9876543214, 'Vijaynagar', 'Car', 'Great', '30 mins');
insert into DRIVING_LICENSE_TEST_INFO values(206, '2024-06-25', 'Pass', 89, 'Pooja', 9876543215, 'Bhattarahalli', 'Bike', 'safe riding', '27 mins');
insert into DRIVING_LICENSE_TEST_INFO values(207, '2024-07-25', 'Pass', 91, 'Nikhil',9876543216, 'Avalahalli', 'Car', 'Good control', '29 mins');
insert into DRIVING_LICENSE_TEST_INFO values(208, '2024-08-25', 'Pass', 90, 'Neha',9876543217, 'Vijayanagar', 'Bike', 'Excellen', '26 mins');
insert into DRIVING_LICENSE_TEST_INFO values(209, '2024-09-25', 'Pass', 88, 'Rajesh Kumar',9876543218, 'Malleshwaram', 'Car', 'Smooth driving', '28 mins');
insert into DRIVING_LICENSE_TEST_INFO values(210, '2024-10-25', 'Pass', 86, 'Rita', 9876543219, 'Yelahanka', 'Bike', 'Good balance', '25 mins');
insert into DRIVING_LICENSE_TEST_INFO values(211, '2024-11-25', 'Pass', 92, 'Suresh Reddy',9876543220, 'Hebbal', 'Car', 'Excellent', '30 mins');
insert into DRIVING_LICENSE_TEST_INFO values(212, '2024-12-25', 'Pass', 89, 'Arun Kumar',9876543221, 'Bhattarahalli', 'Bike', 'Confident', '27 mins');
insert into DRIVING_LICENSE_TEST_INFO values(213, '2024-01-30', 'Pass', 85, 'Swati',9876543222, 'Hoskote', 'Car', 'Good', '28 mins');
insert into DRIVING_LICENSE_TEST_INFO values(214, '2024-02-28', 'Pass', 90, 'Meera',9876543223, 'Rt nagar', 'Bike', 'Excellent', '26 mins');
insert into DRIVING_LICENSE_TEST_INFO values(215, '2024-03-28', 'Pass', 88, 'Vikram',9876543224, 'Kr puram', 'Car', 'Smooth driving', '29 mins');
insert into DRIVING_LICENSE_TEST_INFO values(216, '2024-04-28', 'Pass', 87, 'Ranjana',9876543225, 'Electronic city', 'Bike', 'Good', '25 mins');
insert into DRIVING_LICENSE_TEST_INFO values(217, '2024-05-28', 'Pass', 91, 'Sandeep Kumar',9876543226, 'Bangalore RTO Center 2', 'Car', 'Excellent', '30 mins');
insert into DRIVING_LICENSE_TEST_INFO values(218, '2024-06-28', 'Pass', 89, 'Deepa Reddy',9876543227, 'Rajajinagar', 'Bike', 'smooth riding', '27 mins');
insert into DRIVING_LICENSE_TEST_INFO values(219, '2024-07-28', 'Pass', 85, 'Kiran',9876543228, 'Bangalore', 'Car', 'Good', '28 mins');
insert into DRIVING_LICENSE_TEST_INFO values(300, '2024-08-28', 'Pass', 90, 'Anita',9876543229, 'Bangalore', 'Bike', 'Excellent', '26 mins');

select * from DRIVING_LICENSE_TEST_INFO;

desc LLR_INFO;
insert into LLR_INFO(LLR_id,applicant_name) values(5,'Lakshmi') on duplicate key update applicant_name='Lasya';

replace into LLR_INFO  values(6,'Deeksha','2002-08-14','Bangalore','deeksha.2002@gmail.com','2024-06-08','2024-06-13','2024-06-13','Issued');