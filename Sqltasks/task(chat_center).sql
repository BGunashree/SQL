create table chat_center(id int not null unique,name varchar(20) not null unique,location varchar(30),contact_number bigint,open_time time,close_time time,famous_chat varchar(20),no_of_items int constraint items_chk check(no_of_items>15),no_of_workers int constraint workers_chk check(no_of_workers>5),shop_owner varchar(20));

desc chat_center;

insert into chat_center values(1, 'Spicy Treat', 'Bangalore', 8660084035, '09:00:00', '22:00:00', 'Pani Puri', 20, 10, 'Ravi Kumar');
insert into chat_center values(2, 'Taste Buds', 'Vijayapura', 9876543211, '10:00:00', '23:00:00', 'Bhel Puri', 25, 8, 'Anita');
insert into chat_center values(3, 'Chaat House', 'Devanahalli', 9876543212, '09:30:00', '21:30:00', 'Samosa', 18, 7, 'Deepak');
insert into chat_center values(4, 'Snack Corner', 'Nandhi', 8904733310, '10:00:00', '22:30:00', 'Pav Bhaji', 30, 12, 'Priya');
insert into chat_center values(5, 'Food Fiesta', 'Srinivaspura', 9876543214, '11:00:00', '23:00:00', 'Dahi Puri', 22, 6, 'Arjun Patil');
insert into chat_center values(6, 'Chaat Junction', 'Hoskote', 9876543215, '09:00:00', '21:00:00', 'Kachori', 24, 9, 'Sneha');
insert into chat_center values(7, 'Quick Bites', 'Devanahalli', 9739611655, '10:30:00', '22:00:00', 'Aloo Tikki', 19, 11, 'Vijay Shetty');
insert into chat_center values(8, 'Snack Shack', 'Bangalore', 9876543217, '09:00:00', '23:00:00', 'Chole Bhature', 28, 10, 'Santosh Kumar');
insert into chat_center values(9, 'Chaat Plaza', 'Vijayapura', 8951144321, '09:30:00', '22:00:00', 'Papdi Chaat', 21, 8, 'Divya');
insert into chat_center values(10, 'Flavor Street', 'Nandhi', 9876543219, '10:00:00', '22:30:00', 'Dabeli', 26, 7, 'Anil Yadav');
insert into chat_center values(11, 'Snack Stop', 'Srinivaspura', 9876543220, '09:00:00', '21:30:00', 'Ragda Pattice', 23, 6, 'Geeta');
insert into chat_center values(12, 'Chaat Magic', 'Nandhi', 9876543221, '10:00:00', '23:00:00', 'Momos', 20, 9, 'Ravi Sharma');
insert into chat_center values(13, 'Bite Delight', 'Srinivaspura', 8951144517, '09:30:00', '22:30:00', 'Sev Puri', 27, 10, 'Seema');
insert into chat_center values(14, 'Tasty Treats', 'Vijayapura', 9876543223, '10:00:00', '22:00:00', 'Pani Puri', 29, 8, 'Akshay Gowda');
insert into chat_center values(15, 'Snack Hub', 'Devanahalli', 8951144679, '09:00:00', '21:00:00', 'Bhel Puri', 30, 12, 'Nisha Rao');
insert into chat_center values(16, 'Chaat Delight', 'Bangalore', 9876543225, '09:30:00', '22:00:00', 'Pav Bhaji', 25, 7, 'Rajesh Babu');
insert into chat_center values(17, 'Tasty Snacks', 'Vijayapura', 9876543226, '10:00:00', '23:00:00', 'Samosa', 18, 6, 'Anitha Rao');
insert into chat_center values(18, 'Bite Corner', 'Kolar', 8904727010, '09:00:00', '21:30:00', 'Dahi Puri', 24, 8, 'Suresh Naik');
insert into chat_center values(19, 'Snack Delight', 'Srinivaspura', 9876543228, '10:00:00', '22:30:00', 'Aloo Tikki', 20, 9, 'Rohit Kumar');
insert into chat_center values(20, 'Chaat World', 'Devanahalli', 9876543229, '09:30:00', '23:00:00', 'Kachori', 26, 10, 'Priya Shetty');

alter table chat_center modify contact_number bigint not null;
alter table chat_center add constraint cno_uni unique(contact_number);
alter table chat_center add constraint noofitems_chk check(no_of_items>10);