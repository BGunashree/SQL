create database hospital;

create table hospital_info(id int not null unique,h_name varchar(20),address varchar(20),customer_care_no bigint,no_of_doctors bigint constraint no_of_doctors_chk check(no_of_doctors>20),constraint h_name_pk primary key(h_name));
alter table hospital_info add constraint customer_care_no_uni unique(customer_care_no);
alter table hospital_info drop primary key;
insert into hospital_info values(1,'Aster CMI','Hebbal',0808348784,500);
insert into hospital_info values(2,'Sparsh','Yelahanka',9739611655,400);
insert into hospital_info values(3,'Manipal','Hebbal',8951144517,800);
insert into hospital_info values(4,'Fortis','Bannerghatta',8951144679,1000);
insert into hospital_info values(5,'True Life','Nagvara',8660084035,700);

select * from hospital_info;

alter table hospital_info add constraint customer_care_no_pk primary key(customer_care_no);
alter table hospital_info drop constraint id;

desc hospital_info;

create table patient(p_id int not null,p_name varchar(20) primary key,p_address varchar(20),phone_no bigint,p_gender varchar(10));

alter table patient add constraint phone_no_uni unique(phone_no);

insert into patient values(101,'Anil','Vijayapura',9739611655,'Male');
insert into patient values(102,'Asha','Hoskote',8951144517,'Female');
insert into patient values(103,'Shalini','chikkaballapura',8951144679,'Female');
insert into patient values(104,'Akshay','Devanahalli',8660084035,'Male');
insert into patient values(105,'Lavanya','Kolar',8904733310,'Female');


alter table patient add constraint p_id_uni unique(p_id);
alter table patient drop primary key;





create table watch_info(id int,w_name varchar(20),cost bigint,constraint id_pk primary key(id));
alter table watch_info add column w_type varchar(20);
alter table watch_info rename column w_name to w_brand;
alter table watch_info add constraint id_uni unique(id);

alter table watch_info add column w_material varchar(20);
desc watch_info;
select * from watch_info;
insert into watch_info values(1,'Armani',24000,'Analogue','stainless steel');
insert into watch_info values(2,'Titan',5000,'Analogue','ceramic');
insert into watch_info values(3,'Annie Klien',15000,'Digital','Oyster steel');
insert into watch_info values(4,'Ferrari',24000,'Smart','Leather');
insert into watch_info values(5,'HMT',3000,'Analogue','stainless steel');

alter table watch_info drop primary key;
alter table watch_info add constraint w_name_pk  primary key(w_brand);
alter table watch_info add constraint cost_chk check(cost>1000);


create table delivery_info(id int unique,product_name varchar(20) ,price bigint,d_guy_name varchar(20),d_phoneno bigint,primary key(product_name));
alter table delivery_info add constraint price_chk check(price>500);
alter table delivery_info drop index id;
desc delivery_info;
insert into delivery_info values(1,'Hoodie',1700,'Prashanth',9876054342);
insert into delivery_info values(2,'Shoes',1500,'Vijay',8951144517);
insert into delivery_info values(3,'Iron Box',2000,'Akash',9739611655);
insert into delivery_info values(4,'Jean',1200,'Prakash',8660084035);
insert into delivery_info values(5,'Mobile',20000,'Akshay',8904733310);

alter table delivery_info add constraint id_uni unique(id);
alter table delivery_info drop primary key;

create table movies(id int,m_name varchar(20),m_lang varchar(20),m_actor varchar(20),m_director varchar(20),primary  key(id,m_name));
drop table movies;
create table movies(id int,m_name varchar(20),m_lang varchar(20),m_actor varchar(20),m_director varchar(20),constraint m_name_pk primary key(m_name));
alter table movies drop primary key;
desc movies;
alter table movies drop constraint m_name_pk;
