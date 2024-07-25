create table scam_info(id int,scam_name varchar(50),scam_type varchar(20),date_reported varchar(10),no_of_victims int,reported_by varchar(20),loss bigint,culprit_name varchar(30),culprit_contact bigint,culprit_location varchar(40));
alter table scam_info add column scam_date varchar(20),add column agency varchar(20),add column investigation_status varchar(30),add column target varchar(30),add column scam_location varchar(20);

alter table scam_info rename column culprit_contact to scammer_contact, rename column culprit_name to scammer_name, rename column culprit_location to scammer_address,rename column loss to monetary_loss, rename column target to victim_target;

desc scam_info;

alter table scam_info modify column id bigint,modify column no_of_victims bigint,modify column scam_location varchar(30),modify column agency varchar(40),modify column scam_type varchar(30);

INSERT INTO scam_info VALUES(1, 'Ponzi Scheme', 'Investment', '2024-01-10', 100, 'Rajesh Kumar', 50000000, 'Vijay Mallya', 9876543210, 'Bangalore, Karnataka', '2023-12-01', 'CBI', 'Under Investigation', 'Investors', 'Bangalore');
INSERT INTO scam_info VALUES(2, 'Online Shopping Scam', 'E-commerce', '2024-02-15', 500, 'Asha Rani', 10000000, 'Ravi Sharma', 8765432109, 'Delhi', '2023-11-20', 'Delhi Police', 'Closed', 'General Public', 'Delhi');
INSERT INTO scam_info VALUES(3, 'Tech Support Scam', 'Phone', '2024-03-05', 200, 'Sunil Mehta', 3000000, 'Anil Kapoor', 7654321098, 'Mumbai, Maharashtra', '2023-10-10', 'Mumbai Police', 'Under Investigation', 'Elderly', 'Mumbai');
INSERT INTO scam_info VALUES(4, 'Fake Job Scam', 'Employment', '2024-04-10', 300, 'Kavita Verma', 2000000, 'Ramesh Singh', 6543210987, 'Chennai, Tamil Nadu', '2023-09-15', 'Chennai Police', 'Closed', 'Job Seekers', 'Chennai');
INSERT INTO scam_info VALUES(5, 'Lottery Scam', 'Prize', '2024-05-20', 150, 'Vikas Gupta', 4000000, 'Suresh Patel', 5432109876, 'Ahmedabad, Gujarat', '2023-08-25', 'Gujarat Police', 'Under Investigation', 'General Public', 'Ahmedabad');
INSERT INTO scam_info VALUES(6, 'Insurance Scam', 'Fraud', '2024-06-10', 80, 'Meena Sharma', 2500000, 'Mahesh Verma', 4321098765, 'Hyderabad, Telangana', '2023-07-30', 'Hyderabad Police', 'Closed', 'Policy Holders', 'Hyderabad');
INSERT INTO scam_info VALUES(7, 'Banking Fraud', 'Financial', '2024-07-15', 200, 'Amit Joshi', 10000000, 'Rajiv Ranjan', 3210987654, 'Kolkata, West Bengal', '2023-07-10', 'Kolkata Police', 'Under Investigation', 'Bank Customers', 'Kolkata');
INSERT INTO scam_info VALUES(8, 'Credit Card Fraud', 'Financial', '2024-08-01', 500, 'Rohit Bhatia', 6000000, 'Nikhil Jain', 2109876543, 'Pune, Maharashtra', '2023-06-15', 'Pune Police', 'Closed', 'Credit Card Holders', 'Pune');
INSERT INTO scam_info VALUES(9, 'Real Estate Scam', 'Property', '2024-09-10', 100, 'Suman Das', 7000000, 'Arjun Roy', 1098765432, 'Noida, Uttar Pradesh', '2023-05-20', 'Noida Police', 'Under Investigation', 'Property Buyers', 'Noida');
INSERT INTO scam_info VALUES(10, 'Educational Scam', 'Fraud', '2024-10-05', 50, 'Neha Jain', 1500000, 'Pankaj Singh', 9876501234, 'Jaipur, Rajasthan', '2023-04-25', 'Jaipur Police', 'Closed', 'Students', 'Jaipur');
INSERT INTO scam_info VALUES(11, 'Fake Charity Scam', 'Charity', '2024-11-10', 60, 'Arvind Kumar', 3000000, 'Sandeep Gupta', 8765401234, 'Lucknow, Uttar Pradesh', '2023-03-30', 'Lucknow Police', 'Under Investigation', 'Donors', 'Lucknow');
INSERT INTO scam_info VALUES(12, 'Forex Trading Scam', 'Investment', '2024-12-01', 120, 'Ritu Verma', 5000000, 'Manoj Kumar', 7654301234, 'Gurgaon, Haryana', '2023-02-15', 'Gurgaon Police', 'Closed', 'Traders', 'Gurgaon');
INSERT INTO scam_info VALUES(13, 'Ponzi Scheme', 'Investment', '2023-12-10', 90, 'Rakesh Sharma', 4500000, 'Rahul Bansal', 6543201234, 'Chandigarh', '2023-01-20', 'Chandigarh Police', 'Under Investigation', 'Investors', 'Chandigarh');
INSERT INTO scam_info VALUES(14, 'Online Romance Scam', 'Dating', '2024-01-20', 70, 'Priya Nair', 2000000, 'Vishal Kapoor', 5432101234, 'Kochi, Kerala', '2022-12-25', 'Kerala Police', 'Closed', 'Online Daters', 'Kochi');
INSERT INTO scam_info VALUES(15, 'Cryptocurrency Scam', 'Investment', '2024-02-10', 100, 'Anil Bhatt', 8000000, 'Shyam Sundar', 4321001234, 'Bangalore, Karnataka', '2022-11-15', 'CBI', 'Under Investigation', 'Investors', 'Bangalore');
INSERT INTO scam_info VALUES(16, 'Fake Goods Scam', 'E-commerce', '2024-03-15', 300, 'Ravi Desai', 3500000, 'Kiran Mehta', 3210901234, 'Mumbai, Maharashtra', '2022-10-20', 'Mumbai Police', 'Closed', 'Online Shoppers', 'Mumbai');
INSERT INTO scam_info VALUES(17, 'Loan Scam', 'Financial', '2024-04-25', 250, 'Vandana Singh', 4000000, 'Deepak Rao', 2109801234, 'Delhi', '2022-09-25', 'Delhi Police', 'Under Investigation', 'Loan Applicants', 'Delhi');
INSERT INTO scam_info VALUES(18, 'Fake News Scam', 'Media', '2024-05-15', 500, 'Ajay Sharma', 1500000, 'Mohan Das', 1098701234, 'Pune, Maharashtra', '2022-08-30', 'Pune Police', 'Closed', 'General Public', 'Pune');
INSERT INTO scam_info VALUES(19, 'ATM Skimming', 'Financial', '2024-06-20', 200, 'Kamal Gupta', 6000000, 'Ashok Kumar', 9876512345, 'Bangalore, Karnataka', '2022-07-10', 'CBI', 'Under Investigation', 'Bank Customers', 'Bangalore');
INSERT INTO scam_info VALUES(20, 'Medical Scam', 'Healthcare', '2024-07-05', 80, 'Seema Rani', 2500000, 'Rajesh Varma', 8765412345, 'Hyderabad, Telangana', '2022-06-15', 'Hyderabad Police', 'Closed', 'Patients', 'Hyderabad');


select * from scam_info;

update scam_info set monetary_loss = 60000000, investigation_status = 'Closed' where id = 1;
update scam_info set  reported_by = 'Reema Sharma' where id = 2;
update scam_info set scammer_contact = 8765432100 where id = 12 or  scam_location = 'Thane, Maharashtra';
update scam_info set no_of_victims = 350 where id = 18;
update scam_info set  date_reported = '2024-06-01' where scammer_address = 'Kochi, Kerala';
update scam_info set scam_name = 'Health Insurance Scam', victim_target = 'Health Policy Holders' where id = 6;
update scam_info set no_of_victims = 250 WHERE id = 7;
update scam_info set investigation_status = 'Under Investigation', scam_date = '2023-05-01' where id = 8;
update scam_info set no_of_victims=900 where agency = 'CBI';
update scam_info set  monetary_loss = 1800000 where scammer_name = 'Rahul Bansal';

delete from scam_info where id=19;
delete from scam_info where agency='Delhi Police';

select * from scam_info where agency="CBI" and id =15;
select scam_name from scam_info where reported_by='Meena Sharma' or scam_type='Fraud';
 select * from scam_info where id in (3,5,8,12,13);
 select * from scam_info where id not in (3,5,8,12,13);