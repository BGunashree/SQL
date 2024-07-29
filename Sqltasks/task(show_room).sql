create table show_room(id int not null unique,name varchar(20) not null unique,location varchar(20),contact_number bigint ,capacity bigint constraint capacity_chek check(capacity>500),manager varchar(20),email varchar(40),open_time time,close_time time,no_of_employees int 
constraint noofempl_chek check(no_of_employees>100));

desc show_room;

insert into show_room  values(1, 'JSP Kia', 'Bangalore', 9876543210, 600, 'Arun Kumar', 'arun@bangalorecentral.com', '10:00:00', '21:00:00', 150);
insert into show_room  values(2, 'Advaith', 'Bangalore', 8951144517, 700, 'Kiran Rao', 'kiran@mysoremall.com', '09:00:00', '22:00:00', 200);
insert into show_room  values(3, 'Trident', 'Bangalore', 9876543212, 800, 'Deepa Nair', 'deepa@trident.com', '10:00:00', '20:00:00', 180);
insert into show_room  values(4, 'Pavan Hyundai', 'Bangalore', 9876543213, 900, 'Rajesh Singh', 'rajesh@hyundai.com', '11:00:00', '20:30:00', 220);
insert into show_room  values(5, 'PPS Skoda', 'Bangalore', 9876543214, 1000, 'Smita Patil', 'smita@belgaumbazaar.com', '09:30:00', '21:30:00', 130);
insert into show_room  values(6, 'Nandi Toyota', 'Bangalore', 9739611655, 1100, 'Vikram Reddy', 'vikram@nanditoyotas.com', '10:30:00', '21:00:00', 210);
insert into show_room  values(7, 'JSP Autocore', 'Bangalore', 9876543216, 1200, 'Latha Shetty', 'latha@jspautocore.com', '09:00:00', '22:00:00', 250);
insert into show_room  values(8, 'Prerana Tata Motors', 'Bangalore', 9876543217, 1300, 'Santosh Kumar', 'santosh@tumkurtraders.com', '10:00:00', '20:00:00', 140);
insert into show_room  values(9, 'MG Motor', 'Bangalore', 9876543218, 1400, 'Divya Gupta', 'divya@raichurretail.com', '11:00:00', '20:30:00', 170);
insert into show_room  values(10, 'Davivik Suzuki', 'Bangalore', 8660084035, 1500, 'Anil Yadav', 'anil@daviviksuz.com', '10:00:00', '21:00:00', 160);
insert into show_room  values(11, 'Yamaha Xtreme Motors', 'Chikkaballapura', 9876543220, 1600, 'Geeta Joshi', 'geeta@xtreme.com', '09:00:00', '21:30:00', 200);
insert into show_room  values(12, 'Namma Honda', 'Chikkaballapura', 8904733310, 1700, 'Ravi Sharma', 'ravi@nammahonda.com', '10:00:00', '20:30:00', 190);
insert into show_room  values(13, 'Girias', 'Chikkaballapura', 9876543222, 1800, 'Seema Rao', 'seema@mandyamarket.com', '11:00:00', '21:00:00', 180);
insert into show_room  values(14, 'Bhawnit Suzuki', 'Chikkaballapura', 9876543223, 1900, 'Karthik Gowda', 'karthik@chikmagalurcentral.com', '10:30:00', '20:00:00', 170);
insert into show_room  values(15, 'Lakshmi Hyundai', 'Devanahalli', 8951144517, 2000, 'Nisha Rao', 'nisha@gulbargagalleries.com', '09:00:00', '21:00:00', 210);
insert into show_room  values(16, 'Tata motors', 'Devanahalli', 9876543225, 2100, 'Rajesh Babu', 'rajesh@devanahalli.com', '10:00:00', '20:00:00', 200);
insert into show_room  values(17, 'Nindeesh Honda', 'Devanahalli', 9876543226, 2200, 'Anitha Rao', 'anitha@nindesh.com', '11:00:00', '20:30:00', 220);
insert into show_room  values(18, 'Kiosk', 'Kolar', 9876543227, 2300, 'Suresh Naik', 'suresh@kisokkolar.com', '10:30:00', '21:00:00', 230);
insert into show_room  values(19, 'Maruti Suzuki', 'Devanahalli', 9739745434, 2400, 'Rohit Kumar', 'rohit@marutisuzuki.com', '09:00:00', '21:00:00',300);
insert into show_room  values(20, 'Kristal', 'Devanahalli', 9876543228, 2400, 'Akshay', 'akshay@kristal.com', '10:00:00', '21:00:00',350);

update show_room set contact_number=8951144679 where id=15;
alter table show_room modify  location varchar(20) not null, add constraint contact_number_uni unique(contact_number),add constraint noofempls_chek check(50<no_of_employees<500),add constraint capacity_chk check(capacity>510);