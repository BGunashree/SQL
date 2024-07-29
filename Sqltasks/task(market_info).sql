create table market_info(id int not null unique,market_name varchar(20) not null unique,location varchar(20),no_of_shops int constraint shop_chk check(no_of_shops>10),opening_time time,closing_time time, parking_facility boolean,no_of_visitors bigint constraint visi_chk check(no_of_visitors>50),established_date date,total_area_sqft int);

desc market_info;

insert into market_info values(1,'KR Market','Kalasi Palya',200,'06:00:00','21:00:00',TRUE,5000,'1928-01-01',100000);
insert into market_info values(2,'Russell Market','Shivaji Nagar',150,'07:00:00','22:00:00',TRUE,3000,'1927-01-01',75000);
insert into market_info values(3,'Malleswaram Market','Malleswaram',120,'06:30:00','20:30:00',FALSE,2000,'1940-01-01',50000);
insert into market_info values(4,'Yeshwanthpur Market','Yeshwanthpur',180,'05:30:00','21:00:00',TRUE,4500,'1950-01-01',90000);
insert into market_info values(5,'Jayanagar Market','Jayanagar',130,'06:00:00','21:00:00',TRUE,2500,'1960-01-01',65000);
insert into market_info values(6,'Koramangala Market','Koramangala',140,'07:00:00','22:00:00',FALSE,3000,'1970-01-01',70000);
insert into market_info values(7,'Indiranagar Market','Indiranagar',110,'06:00:00','21:30:00',TRUE,2200,'1980-01-01',55000);
insert into market_info values(8,'Whitefield Market','Whitefield',170,'06:30:00','22:00:00',FALSE,4000,'1990-01-01',85000);
insert into market_info values(9,'Hebbal Market','Hebbal',160,'05:30:00','21:00:00',TRUE,3700,'2000-01-01',80000);
insert into market_info values(10,'ElectronicCityMarket','Electronic City',190,'06:00:00','22:00:00',TRUE,4800,'2010-01-01',95000);
insert into market_info values(11,'Banashankari Market','Banashankari',125,'06:00:00','21:00:00',FALSE,2600,'1985-01-01',60000);
insert into market_info values(12,'RT Nagar Market','RT Nagar',115,'06:30:00','20:30:00',TRUE,2100,'1995-01-01',55000);
insert into market_info values(13,'Ulsoor Market','Ulsoor',140,'07:00:00','22:00:00',FALSE,3200,'1975-01-01',70000);
insert into market_info values(14,'Basavanagudi Market','Basavanagudi',135,'06:00:00','21:00:00',TRUE,2800,'1965-01-01',68000);
insert into market_info values(15,'HSR Layout Market','HSR Layout',150,'06:00:00','21:30:00',TRUE,3000,'2005-01-01',75000);
insert into market_info values(16,'Majestic Market','Majestic',200,'05:30:00','22:00:00',FALSE,5000,'1925-01-01',100000);
insert into market_info values(17,'JP Nagar Market','JP Nagar',130,'06:00:00','21:00:00',TRUE,2700,'1990-01-01',65000);
insert into market_info values(18,'MG Road Market','MG Road',140,'07:00:00','22:00:00',TRUE,3200,'1930-01-01',70000);
insert into market_info values(19,'ComercialStretMarket','Commercial Street',160,'06:00:00','21:30:00',FALSE,4000,'1945-01-01',80000);
insert into market_info values(20,'KalyanNagar Market','Kalyan Nagar',125,'06:00:00','21:00:00',TRUE,2600,'2000-01-01',60000);

desc market_info;

alter table market_info modify location varchar(20) not null;
alter table market_info add constraint loc_uni unique(location);
alter table market_info add constraint noshops_chk check(no_of_shops>15);
alter table market_info add constraint area_sqft_chk check(total_area_sqft>1000);