create table metro_info(id int not null unique,name varchar(40) not null unique,location varchar(40),year_opened date,closing_time time,construction_cost bigint,platform_count int constraint pcount_chk check(platform_count>4),tracks_count int,line varchar(20),zone varchar(20));

desc metro_info;


insert into metro_info  values(1,'Kempegowda Station','Majestic','2011-10-20','23:00:00',1500000000,6,4,'Purple','Central');
insert into metro_info  values(2,'Baiyappanahalli','Baiyappanahalli','2011-10-20','23:00:00',1200000000,6,4,'Purple','East');
insert into metro_info  values(3,'Indiranagar','Indiranagar','2011-10-20','23:00:00',800000000,5,4,'Purple','East');
insert into metro_info  values(4,'MG Road','MG Road','2011-10-20','23:00:00',1000000000,5,4,'Purple','Central');
insert into metro_info  values(5,'Vidhana Soudha','Vidhana Soudha','2014-03-01','23:00:00',900000000,5,4,'Purple','Central');
insert into metro_info  values(6,'Rajajinagar','Rajajinagar','2015-05-01','23:00:00',950000000,6,4,'Green','West');
insert into metro_info  values(7,'Jayanagar','Jayanagar','2015-05-01','23:00:00',850000000,5,4,'Green','South');
insert into metro_info  values(8,'Yeshwanthpur','Yeshwanthpur','2015-05-01','23:00:00',1300000000,6,4,'Green','North');
insert into metro_info  values(9,'Nagasandra','Nagasandra','2015-05-01','23:00:00',1100000000,6,4,'Green','North');
insert into metro_info  values(10,'Peenya','Peenya','2015-05-01','23:00:00',1050000000,6,4,'Green','North');
insert into metro_info  values(11,'South End Circle','South End Circle','2017-06-18','23:00:00',700000000,5,4,'Green','South');
insert into metro_info  values(12,'Banashankari','Banashankari','2017-06-18','23:00:00',800000000,5,4,'Green','South');
insert into metro_info  values(13,'Mysore Road','Mysore Road','2015-05-01','23:00:00',1150000000,6,4,'Purple','West');
insert into metro_info  values(14,'Deepanjali Nagar','Deepanjali Nagar','2015-05-01','23:00:00',850000000,5,4,'Purple','West');
insert into metro_info  values(15,'Vijayanagar','Vijayanagar','2015-05-01','23:00:00',900000000,5,4,'Purple','West');
insert into metro_info  values(16,'Attiguppe','Attiguppe','2015-05-01','23:00:00',950000000,5,4,'Purple','West');
insert into metro_info  values(17,'Kengeri','Kengeri','2021-08-30','23:00:00',1200000000,6,4,'Purple','West');
insert into metro_info  values(18,'Dasarahalli','Dasarahalli','2015-05-01','23:00:00',800000000,5,4,'Green','North');
insert into metro_info  values(19,'Chikkapete','Chikkapete','2015-05-01','23:00:00',700000000,5,4,'Green','Central');
insert into metro_info  values(20,'Challaghatta','Challaghatta','2021-08-30','23:00:00',1000000000,6,4,'Purple','West');


desc metro_info;

alter table metro_info modify location varchar(40) not null;
alter table metro_info add constraint loc_uni unique(location) ;
alter table metro_info add constraint const_cost_chk check(construction_cost>100000000);