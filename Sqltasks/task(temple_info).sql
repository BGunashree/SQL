create table temple_info(id int not null unique,t_name varchar(20) not null unique,deity varchar(20),location varchar(30),open_time time,close_time time,built_by varchar(20),year_of_establish date,priest_name varchar(20),years_old bigint constraint old_chk check(years_old>10));

desc temple_info;


insert into temple_info values(1,'Virupaksha','Shiva','Hampi','06:00:00','20:00:00','Vijayanagara','1509-01-01','Ramanath',515);
insert into temple_info values(2,'Chamundeshwari','Durga','Mysore','05:00:00','21:00:00','Hoysala','1200-01-01','Manjunath',824);
insert into temple_info values(3,'Manjunatha','Shiva','Dharmasthala','06:00:00','21:00:00','Vaishnava','800-01-01','Ananth',1224);
insert into temple_info values(4,'Sri Krishna','Krishna','Udupi','04:30:00','21:00:00','Madhvacharya','1200-01-01','Madhusudhan',824);
insert into temple_info values(5,'Mookambika','Durga','Kollur','05:00:00','20:00:00','Shankaracharya','800-01-01','Shankara',1224);
insert into temple_info values(6,'Murudeshwara','Shiva','Murudeshwar','06:00:00','20:00:00','Rani Chennamma','1600-01-01','Siddheshwar',424);
insert into temple_info values(7,'Kukke Subramanya','Subramanya','Subramanya','05:00:00','20:00:00','Shankaracharya','700-01-01','Subramanian',1324);
insert into temple_info values(8,'Mahabaleshwar','Shiva','Gokarna','06:00:00','20:00:00','Mayura Sharma','400-01-01','Mahesh',1624);
insert into temple_info values(9,'Sri Vitthala','Vishnu','Hampi','07:00:00','19:00:00','Vijayanagara','1500-01-01','Vittal',524);
insert into temple_info values(10,'Durga Parameshwari','Durga','Kateel','05:00:00','21:00:00','Parashurama','800-01-01','Paramesh',1224);
insert into temple_info values(11,'Ranganathaswamy','Ranganatha','Srirangapatna','06:00:00','21:00:00','Ganga Dynasty','984-01-01','Ranganath',1040);
insert into temple_info values(12,'Mallikarjuna','Shiva','Pattadakal','05:30:00','20:30:00','Chalukya','740-01-01','Mallikarjun',1284);
insert into temple_info values(13,'Viranarayana','Vishnu','Gadag','06:00:00','20:00:00','Chalukya','1100-01-01','Vijayanand',924);
insert into temple_info values(14,'Banashankari','Durga','Badami','06:00:00','21:00:00','Chalukya','700-01-01','Banashankar',1324);
insert into temple_info values(15,'Sri Basaveshwara','Shiva','Basavana Bagevadi','06:00:00','20:00:00','Basavanna','1100-01-01','Basavaraj',924);
insert into temple_info values(16,'Sharadamba','Sharada','Sringeri','06:00:00','21:00:00','Shankaracharya','800-01-01','Sharath',1224);
insert into temple_info values(17,'Keshava','Vishnu','Somnathpur','07:00:00','19:00:00','Hoysala','1268-01-01','Keshavan',756);
insert into temple_info values(18,'Bhoganandishwara','Shiva','Nandi Hills','06:00:00','20:00:00','Chola','806-01-01','Bhogananda',1218);
insert into temple_info values(19,'Lakshmi Narasimha','Narasimha','Nuggehalli','06:00:00','20:00:00','Hoysala','1246-01-01','Lakshman',778);
insert into temple_info values(20,'Amruteshwara','Shiva','Amruthapura','06:00:00','20:00:00','Hoysala','1196-01-01','Amruthesh',828);

alter table temple_info add constraint p_name_uni unique(priest_name);
alter table temple_info modify priest_name varchar(20) not null;
alter table temple_info add constraint yearsold_chk check(years_old>100);