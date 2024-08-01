create table student_info(id int not null ,s_name varchar(20),usn varchar(20),mobile_no bigint unique,address varchar(20),primary key(usn),constraint id_chk check(id>0));
drop table student_info;
create database student;
use student;
create table branch(b_id int not null,b_usn varchar(20) unique,b_name varchar(20),no_of_sem int ,no_of_students bigint,foreign key(b_usn) references student_info(usn),constraint no_of_sem_chk check(no_of_sem>2));
desc student_info;
desc branch;
alter table branch rename column no_of_students  to fee;
alter table branch modify column fee bigint;
insert into student_info values(1,'Gunashree','1CD20CS052',8951144517,'Vijayapura');
insert into student_info values(2,'Divya','1CD20CS043',9739611655,'Hoskote');
insert into student_info values(3,'Bhavya','1CD20AI009',9866008403,'Kolar');
insert into student_info values(4,'Sandhya','1CD20AI120',8951144679,'Bagepalli');
insert into student_info values(5,'Pratheeksha','1CD20EC020',8660084035,'Nandhi');
insert into student_info values(6,'Supritha','1CD20CV036',9739745434,'Vijayapura');
insert into student_info values(7,'Moksha','1CD20EE026',8765493210,'Bangalore');
insert into student_info values(8,'Jaya','1CD20IS049',8945367210,'Srinivaspura');
insert into student_info values(9,'Deeksha','1CD20ME135',7890654321,'Kolar');
insert into student_info values(10,'Sindhu','1CD20EI098',6785432190,'Bangalore');

select * from student_info;

insert into branch values(11,'1CD20AI009','AIML',8,100000);
insert into branch values(12,'1CD20CS043','CSE',8,200000);
insert into branch values(13,'1CD20CV036','CIVIL',8,1000000);
insert into branch values(14,'1CD20AI120','AIML',8,36000);
insert into branch values(15,'1CD20CS052','CSE',8,36000);
insert into branch values(16,'1CD20EC020','EC',8,80000);
insert into branch values(17,'1CD20EE026','EEE',8,100000);
insert into branch values(18,'1CD20EI098','EI',8,100000);
insert into branch values(19,'1CD20IS049','ISE',8,200000);
insert into branch values(20,'1CD20ME135','MECH',8,36000);

select * from student_info where s_name like 'S%';
select * from student_info where id between 1 and 4;
select * from student_info order by id;
select LOWER(s_name) as lower_name from student_info;
select upper(address) as upper_address from student_info;
select concat(s_name,usn) from student_info;
select length(s_name) ,s_name from student_info;
create index address_index on student_info(address);
show indexes from student_info;
explain select * from student_info where address='Vijayapura';

select * from branch;
select * from branch where b_name like 'C%';
select * from branch where b_id between 11 and 15;
select * from branch order by fee desc;
select LOWER(b_usn) as lower_usn from branch;
select upper(b_name) as upper_name from branch;
select concat(b_usn,b_name) as b_usn_name from branch;
select length(b_usn) ,b_usn from branch;
create index b_name on branch(b_name);
show indexes from branch;
explain select * from branch where b_name='AIML';

