create table state_info(id int,state_name varchar(25),capital varchar(20),largest_city varchar(30),population bigint,governor varchar(30),cm varchar(40),no_of_districts bigint,famous_place varchar(30),language_spoken varchar(30));
alter table state_info add column famouse_dance_form varchar(20),add column area bigint,add column gdp bigint,add column major_industry varchar(30),add column wildlife_sanctuary varchar(50);
desc state_info;
alter table state_info rename column state_name to s_name,rename column capital to s_capital,rename column cm to s_cm,rename column famouse_dance_form to cultural_dance,rename column  language_spoken to official_language;
alter table state_info modify column s_capital varchar(35),modify column s_name varchar(40),modify column no_of_districts int,modify column famous_place varchar(40),modify column id bigint;

INSERT INTO state_info VALUES(1, 'Andhra Pradesh', 'Amaravati', 'Visakhapatnam', 49577103, 'Biswa Bhusan Harichandan', 'Y. S. Jagan Mohan Reddy', 13, 'Tirupati', 'Telugu', 'Kuchipudi', 162968, 108108, 'Information Technology', 'Nagarjuna Sagar-Srisailam Tiger Reserve');
INSERT INTO state_info VALUES(2, 'Arunachal Pradesh', 'Itanagar', 'Itanagar', 1383727, 'B. D. Mishra', 'Pema Khandu', 25, 'Tawang', 'English', 'Bardo Chham', 83743, 24648, 'Agriculture', 'Namdapha National Park');
INSERT INTO state_info VALUES(3, 'Assam', 'Dispur', 'Guwahati', 35607039, 'Jagdish Mukhi', 'Himanta Biswa Sarma', 33, 'Kaziranga', 'Assamese', 'Bihu', 78438, 35084, 'Tea', 'Kaziranga National Park');
INSERT INTO state_info VALUES(4, 'Bihar', 'Patna', 'Patna', 124799926, 'Rajendra Arlekar', 'Nitish Kumar', 38, 'Bodh Gaya', 'Hindi', 'Jat-Jatin', 94163, 68675, 'Agriculture', 'Valmiki National Park');
INSERT INTO state_info VALUES(5, 'Chhattisgarh', 'Raipur', 'Raipur', 29436231, 'Biswabhusan Harichandan', 'Bhupesh Baghel', 32, 'Chitrakote', 'Hindi', 'Panthi', 135192, 33832, 'Steel', 'Indravati National Park');
INSERT INTO state_info VALUES(6, 'Goa', 'Panaji', 'Vasco da Gama', 1542750, 'P. S. Sreedharan Pillai', 'Pramod Sawant', 2, 'Dudhsagar Falls', 'Konkani', 'Dhalo', 3702, 7982, 'Tourism', 'Bhagwan Mahavir Wildlife Sanctuary');
INSERT INTO state_info VALUES(7, 'Gujarat', 'Gandhinagar', 'Ahmedabad', 63902219, 'Acharya Devvrat', 'Bhupendra Patel', 33, 'Gir National Park', 'Gujarati', 'Garba', 196024, 156126, 'Diamond', 'Gir National Park');
INSERT INTO state_info VALUES(8, 'Haryana', 'Chandigarh', 'Faridabad', 28672000, 'Bandaru Dattatreya', 'Manohar Lal Khattar', 22, 'Kurukshetra', 'Hindi', 'Ghoomar', 44212, 92367, 'Agriculture', 'Sultanpur National Park');
INSERT INTO state_info VALUES(9, 'Himachal Pradesh', 'Shimla', 'Shimla', 7400000, 'Shiv Pratap Shukla', 'Sukhvinder Singh Sukhu', 12, 'Manali', 'Hindi', 'Nati', 55673, 16629, 'Tourism', 'Great Himalayan National Park');
INSERT INTO state_info VALUES(10, 'Jharkhand', 'Ranchi', 'Ranchi', 38593948, 'C. P. Radhakrishnan', 'Hemant Soren', 24, 'Deoghar', 'Hindi', 'Jhumar', 79714, 30400, 'Mining', 'Betla National Park');
INSERT INTO state_info VALUES(11, 'Karnataka', 'Bengaluru', 'Bengaluru', 67562686, 'Thawar Chand Gehlot', 'Siddaramaiah', 31, 'Hampi', 'Kannada', 'Yakshagana', 191791, 196387, 'Information Technology', 'Bandipur National Park');
INSERT INTO state_info VALUES(12, 'Kerala', 'Thiruvananthapuram', 'Thiruvananthapuram', 35699443, 'Arif Mohammad Khan', 'Pinarayi Vijayan', 14, 'Alleppey', 'Malayalam', 'Kathakali', 38863, 98200, 'Tourism', 'Periyar National Park');
INSERT INTO state_info VALUES(13, 'Madhya Pradesh', 'Bhopal', 'Indore', 85358965, 'Mangubhai C. Patel', 'Shivraj Singh Chouhan', 52, 'Khajuraho', 'Hindi', 'Gaur', 308245, 112375, 'Agriculture', 'Kanha National Park');
INSERT INTO state_info VALUES(14, 'Maharashtra', 'Mumbai', 'Mumbai', 123144223, 'Ramesh Bais', 'Eknath Shinde', 36, 'Ajanta Caves', 'Marathi', 'Lavani', 307713, 400154, 'Manufacturing', 'Tadoba Andhari Tiger Reserve');
INSERT INTO state_info VALUES(15, 'Manipur', 'Imphal', 'Imphal', 3091545, 'Anusuiya Uikey', 'N. Biren Singh', 16, 'Loktak Lake', 'Manipuri', 'Raas Leela', 22327, 3750, 'Handloom', 'Keibul Lamjao National Park');
INSERT INTO state_info VALUES(16, 'Meghalaya', 'Shillong', 'Shillong', 3366710, 'Phagu Chauhan', 'Conrad Sangma', 11, 'Cherrapunji', 'English', 'Nongkrem', 22429, 4586, 'Agriculture', 'Balphakram National Park');
INSERT INTO state_info VALUES(17, 'Mizoram', 'Aizawl', 'Aizawl', 1239244, 'Kambhampati Hari Babu', 'Zoramthanga', 11, 'Reiek', 'Mizo', 'Cheraw', 21081, 1982, 'Agriculture', 'Phawngpui National Park');
INSERT INTO state_info VALUES(18, 'Nagaland', 'Kohima', 'Dimapur', 2249695, 'La. Ganesan', 'Neiphiu Rio', 12, 'Dzukou Valley', 'English', 'Chang Lo', 16579, 2747, 'Agriculture', 'Intanki National Park');
INSERT INTO state_info VALUES(19, 'Odisha', 'Bhubaneswar', 'Bhubaneswar', 46356334, 'Ganeshi Lal', 'Naveen Patnaik', 30, 'Puri', 'Odia', 'Odissi', 155707, 59825, 'Mining', 'Simlipal National Park');

select * from state_info;

update state_info set no_of_districts=20 where id=7;
update state_info set s_cm='Jagan Mohan Reddy' where s_name='Andhra Pradesh';
update state_info set population=298764231 where s_name='Assam';
update state_info set no_of_districts=30 where id=3 and id=20;
update state_info set area=89511 where id=9 or s_name='Goa';
update state_info set major_industry='Textile' where s_capital='Shilong';
update state_info set area=86600 where id=6;
update state_info set gdp=84035 where id=15;
update state_info set no_of_districts=22 where id=17;
update state_info set famous_place='Beluru' where s_name='Karnataka';


delete from state_info where governor='Rajendra Arlekar';
delete from state_info where id=14 and s_capital='Itanagar';

select * from state_info where id=11 or id=1;
select * from state_info where largest_city='Bengaluru' and s_name='Karnataka';
select s_name from state_info where id in(1,11,2,5,8,9);
select s_cm from state_info where id not in(4,7,9,20,16);
