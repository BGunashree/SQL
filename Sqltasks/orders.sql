create database orders;

use orders;
create table order_info(id int,order_name varchar(20),cost int,order_id int,created_at timestamp, 
created_by varchar(20),modified_at timestamp,modified_by varchar(20),primary key(order_id));

create table payment(id int,price int,payment_id int,p_order_id int,payment_status varchar(20),
created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),
primary key(payment_id),foreign key(p_order_id)references order_info(order_id)on delete cascade on update cascade);

create table restaurant(id int,restaurant_name varchar(20),restaurant_id int,location varchar(20),r_order_id int,
ratings int,r_payment_id int,created_at timestamp, created_by varchar(20),modified_at timestamp,
modified_by varchar(20),primary key(restaurant_id),
foreign key(r_order_id)references order_info(order_id)on delete cascade on update cascade,
foreign key(r_payment_id)references payment(payment_id)on delete cascade on update cascade);

create table delivery(id int,person_name varchar(20),mode_of_payment enum('online','offline'),d_restaurant_id int,
d_order_id int,created_at timestamp, created_by varchar(20),modified_at timestamp,
modified_by varchar(20),foreign key(d_restaurant_id)references restaurant(restaurant_id)on delete cascade on update cascade,foreign key(d_order_id)references order_info(order_id) on delete cascade on update cascade);


use orders;

insert into order_info values(1,'Biriyani',200,101,now(),'Guna',now(),'Jaya');
insert into order_info values(2,'Hot wings',270,102,now(),'Akshay',now(),'Anil');

desc payment;
insert into payment values(11,200,201,101,'fail',now(),'Baiyanna',now(),'Vijaya');
insert into payment values(12,270,202,102,'success',now(),'Divya',now(),'Sindhu');

drop table delivery;
drop table restaurant;
drop table payment;
drop table order_info;

desc restaurant;
insert into restaurant values(21,'Meghana',301,'banglore',102,301,201,now(),'Kavya',now(),'Hema');
insert into restaurant values(22,'KFC',302,'Sahakarnagar',101,302,202,now(),'Bhavya',now(),'Desha');

desc delivery;
insert into delivery values(31,'Gunashree','online',301,101,now(),'Prathi',now(),'Raji');
insert into delivery values(32,'Supritha','offline',302,102,now(),'Hima',now(),'Lavanya');

select * from restaurant;
select * from delivery;
select * from order_info;
select * from payment;
