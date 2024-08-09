create database books;
use books;
CREATE TABLE author_details (author_id INT PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),
gender varchar(10),birth_date DATE,nationality VARCHAR(50),email VARCHAR(100),phone VARCHAR(15),website VARCHAR(100),
no_of_awards int);

CREATE TABLE book_details(book_id INT PRIMARY KEY,title VARCHAR(100),genre VARCHAR(50),publish_date DATE,
price bigint,isbn VARCHAR(13),pages INT,b_language VARCHAR(30),cover_type VARCHAR(20),author_id INT UNIQUE,
FOREIGN KEY (author_id) REFERENCES author_details(author_id));
drop table  book_details;
INSERT INTO author_details VALUES(1, 'Chetan', 'Bhagat', 'Male', '1974-04-22', 'Indian', 'chetan.bhagat@gmail.com', '9876543210', 'http://chetanbhagat.com', 5);
INSERT INTO author_details VALUES(2, 'Arundhati', 'Roy', 'Female', '1961-11-24', 'Indian', 'arundhati.roy@gmail.com', '8765432109', 'http://arundhatiroy.com', 2);
INSERT INTO author_details VALUES(4, 'Jhumpa', 'Lahiri', 'Female', '1967-07-11', 'Indian', 'jhumpa.lahiri@gmail.com', '6543210987', 'http://jhumpalahiri.com', 4);
INSERT INTO author_details VALUES(5, 'Salman', 'Rushdie', 'Male', '1947-06-19', 'Indian', 'salman.rushdie@gmail.com', '5432109876', 'http://salmanrushdie.com', 6);
INSERT INTO author_details VALUES(6, 'Khushwant', 'Singh', 'Male', '1915-08-02', 'Indian', 'khushwant.singh@gmail.com', '4321098765', 'http://khushwantsingh.com', 4);
INSERT INTO author_details VALUES(7, 'Vikram', 'Seth', 'Male', '1952-06-20', 'Indian', 'vikram.seth@gmail.com', '3210987654', 'http://vikramseth.com', 5);
INSERT INTO author_details VALUES(8, 'Anita', 'Desai', 'Female', '1937-06-24', 'Indian', 'anita.desai@gmail.com', '2109876543', 'http://anitadesai.com', 3);
INSERT INTO author_details VALUES(9, 'Kamala', 'Das', 'Female', '1934-03-31', 'Indian', 'kamala.das@gmail.com', '1098765432', 'http://kamaladas.com', 2);
INSERT INTO author_details VALUES(10, 'Manan', 'Kapoor', 'Male', '1985-10-15', 'Indian', 'manan.kapoor@gmail.com', '0987654321', 'http://manankapoor.com', 1);
INSERT INTO author_details VALUES(11, 'Rohinton', 'Mistry', 'Male', '1952-07-03', 'Indian', 'rohinton.mistry@gmail.com', '9871234567', 'http://rohintonmistry.com', 3);
INSERT INTO author_details VALUES(12, 'Shobhaa', 'De', 'Female', '1948-01-07', 'Indian', 'shobhaa.de@gmail.com', '8765432123', 'http://shobhaade.com', 2);
INSERT INTO author_details VALUES(13, 'Pankaj', 'Mishra', 'Male', '1969-10-30', 'Indian', 'pankaj.mishra@gmail.com', '7654321789', 'http://pankajmishra.com', 4);
INSERT INTO author_details VALUES(14, 'Nirad', 'C. Chaudhuri', 'Male', '1897-07-23', 'Indian', 'nirad.chaudhuri@gmail.com', '6543212345', 'http://niradchaudhuri.com', 3);
INSERT INTO author_details VALUES(15, 'Raja', 'Rao', 'Male', '1908-11-08', 'Indian', 'raja.rao@gmail.com', '5432103456', 'http://rajarrao.com', 2);
INSERT INTO author_details VALUES(16, 'Kamila', 'Shamsie', 'Female', '1966-08-13', 'Indian', 'kamila.shamsie@gmail.com', '4321098765', 'http://kamilashamsie.com', 5);
INSERT INTO author_details VALUES(17, 'Sudhir', 'Kakar', 'Male', '1938-11-24', 'Indian', 'sudhir.kakar@gmail.com', '3210987654', 'http://sudhirkakar.com', 2);
INSERT INTO author_details VALUES(18, 'Githa', 'Hariharan', 'Female', '1948-04-03', 'Indian', 'githa.hariharan@gmail.com', '2109876543', 'http://githahariharan.com', 3);
INSERT INTO author_details VALUES(19, 'Bani', 'Basu', 'Female', '1965-06-20', 'Indian', 'bani.basu@gmail.com', '1098765432', 'http://banibasu.com', 4);
INSERT INTO author_details VALUES(20, 'Keki', 'Daruwalla', 'Male', '1937-01-09', 'Indian', 'keki.daruwalla@gmail.com', '0987654321', 'http://kekidaruwalla.com', 2);
select * from author_details;
INSERT INTO author_details VALUES(3, 'Ruskin', 'Bond', 'Male', '1934-05-19', 'Indian', 'ruskin.bond@gmail.com', '7654321098', 'http://ruskinbond.com', 3);
INSERT INTO book_details VALUES(11, 'Five Point Someone', 'Fiction', '2004-10-01', 299, '9788129105303', 264, 'English', 'Paperback', 1);
INSERT INTO book_details VALUES(12, 'The God of Small Things', 'Drama', '1997-06-01', 450, '9788184000145', 321, 'English', 'Hardcover', 2);
INSERT INTO book_details VALUES(13, 'The Room on the Roof', 'Young Adult', '1956-03-01', 200, '9780143039600', 170, 'English', 'Paperback', 3);
INSERT INTO book_details VALUES(14, 'Interpreter of Maladies', 'Short Stories', '1999-03-01', 350, '9780395927205', 198, 'English', 'Hardcover', 4);
INSERT INTO book_details VALUES(15, 'Midnights Children', 'Magical Realism', '1981-09-01', 500, '9780394500385', 447, 'English', 'Paperback', 5);
INSERT INTO book_details VALUES(16, 'Train to Pakistan', 'Historical', '1956-08-01', 300, '9788172235566', 189, 'English', 'Paperback', 6);
INSERT INTO book_details VALUES(17, 'A Suitable Boy', 'Novel', '1993-06-01', 699, '9780670841500', 1349, 'English', 'Hardcover', 7);
INSERT INTO book_details VALUES(18, 'Clear Light of Day', 'Fiction', '1980-04-01', 220, '9780140232594', 160, 'English', 'Paperback', 8);
INSERT INTO book_details VALUES(19, 'My Story', 'Autobiography', '1976-01-01', 270, '9780143421516', 160, 'English', 'Paperback', 9);
INSERT INTO book_details VALUES(20, 'The Allegory of the Cave', 'Philosophy', '2015-10-10', 500, '9789352163558', 350, 'English', 'Paperback', 10);
INSERT INTO book_details VALUES(21, 'Such a Long Journey', 'Novel', '1991-05-01', 340, '9780395855142', 285, 'English', 'Paperback', 11);
INSERT INTO book_details VALUES(22, 'Socialite Evenings', 'Fiction', '1988-11-01', 330, '9780140248460', 312, 'English', 'Hardcover', 12);
INSERT INTO book_details VALUES(23, 'The End of India', 'Political Commentary', '2003-04-01', 250, '9780374171215', 300, 'English', 'Paperback', 13);
INSERT INTO book_details VALUES(24, 'The Autobiography of an Unknown Indian', 'Autobiography', '1951-01-01', 450, '9780140035804', 290, 'English', 'Hardcover', 14);
INSERT INTO book_details VALUES(25, 'Kanthapura', 'Novel', '1938-01-01', 300, '9780195651949', 210, 'English', 'Paperback', 15);
INSERT INTO book_details VALUES(26, 'Burnt Shadows', 'Novel', '2009-08-01', 500, '9781408807261', 340, 'English', 'Hardcover', 16);
INSERT INTO book_details VALUES(27, 'The Inner and Outer Self', 'Psychology', '1996-06-01', 450, '9788129123456', 275, 'English', 'Paperback', 17);
INSERT INTO book_details VALUES(28, 'The Thousand Faces of Night', 'Fiction', '1992-01-01', 250, '9780140238629', 210, 'English', 'Paperback', 18);
INSERT INTO book_details VALUES(29, 'The Last Word', 'Poetry', '2004-05-01', 300, '9780670059514', 150, 'English', 'Paperback', 19);
INSERT INTO book_details VALUES(30, 'The Collected Poems', 'Poetry', '1996-11-01', 400, '9780140293842', 200, 'English', 'Hardcover', 20);

update  book_details set book_id=13 where author_id=3;

select *  from book_details group by price having price>300;

select  count(*),price  from book_details group by price having price>300;
select * from book_details order by price; 
select * from book_details limit 5;
select * from book_details limit 5,9;
select avg(price) as avg_p from book_details group by price;
select sum(price) as sum_p from book_details group by price;
update book_details set price= case when author_id=1 then price+100 else price end;


CREATE TABLE company (company_id INT PRIMARY KEY,company_name VARCHAR(100) NOT NULL,
industry VARCHAR(50),founded_year INT,ceo_name VARCHAR(100),country VARCHAR(50),state VARCHAR(50),
city VARCHAR(50),website_url VARCHAR(100),contact_email VARCHAR(100));

CREATE TABLE employee (employee_id INT PRIMARY KEY ,company_id INT,first_name VARCHAR(50),last_name VARCHAR(50),
gender VARCHAR(10),job_title VARCHAR(100),salary bigint,email VARCHAR(100),phone_number bigint,address VARCHAR(200),
FOREIGN KEY (company_id) REFERENCES company(company_id));

desc employee;
desc company;

INSERT INTO company VALUES(1, 'Tata Consultancy Services', 'IT Services', 1968, 'K. Krithivasan', 'India', 'Maharashtra', 'Mumbai', 'https://www.tcs.com', 'info@tcs.com');
INSERT INTO company VALUES(2, 'Infosys', 'IT Services', 1981, 'Salil Parekh', 'India', 'Karnataka', 'Bangalore', 'https://www.infosys.com', 'contact@infosys.com');
INSERT INTO company VALUES(3, 'Reliance Industries', 'Conglomerate', 1966, 'Mukesh Ambani', 'India', 'Maharashtra', 'Mumbai', 'https://www.ril.com', 'support@ril.com');
INSERT INTO company VALUES(4, 'Wipro', 'IT Services', 1945, 'Thierry Delaporte', 'India', 'Karnataka', 'Bangalore', 'https://www.wipro.com', 'info@wipro.com');
INSERT INTO company VALUES(5, 'HDFC Bank', 'Banking', 1994, 'Sashidhar Jagdishan', 'India', 'Maharashtra', 'Mumbai', 'https://www.hdfcbank.com', 'support@hdfcbank.com');
INSERT INTO company VALUES(6, 'Bharti Airtel', 'Telecommunications', 1995, 'Gopal Vittal', 'India', 'Delhi', 'New Delhi', 'https://www.airtel.in', 'care@airtel.com');
INSERT INTO company VALUES(7, 'Mahindra & Mahindra', 'Automotive', 1945, 'Anish Shah', 'India', 'Maharashtra', 'Mumbai', 'https://www.mahindra.com', 'info@mahindra.com');
INSERT INTO company VALUES(8, 'ICICI Bank', 'Banking', 1994, 'Sandeep Bakhshi', 'India', 'Maharashtra', 'Mumbai', 'https://www.icicibank.com', 'support@icicibank.com');
INSERT INTO company VALUES(9, 'Larsen & Toubro', 'Engineering', 1938, 'S. N. Subrahmanyan', 'India', 'Maharashtra', 'Mumbai', 'https://www.larsentoubro.com', 'contact@larsentoubro.com');
INSERT INTO company VALUES(10, 'Aditya Birla Group', 'Conglomerate', 1857, 'Kumar Mangalam Birla', 'India', 'Maharashtra', 'Mumbai', 'https://www.adityabirla.com', 'info@adityabirla.com');


INSERT INTO employee VALUES(11, 1, 'Rajesh', 'Kumar', 'Male', 'Software Engineer', 1200000, 'rajesh.kumar@gmail.com', 9739611655, 'Mumbai');
INSERT INTO employee VALUES(12, 1, 'Anita', 'Singh', 'Female', 'Project Manager', 1800000, 'anita.singh@gmail.com', 9876543211, 'Mangalore');
INSERT INTO employee VALUES(13, 2, 'Amit', 'Kumar', 'Male', 'Software Engineer', 1150000, 'amit.sharma@gmail.com', 9876543212, 'Bangalore');
INSERT INTO employee VALUES(14, 2, 'Priya', 'Rao', 'Female', 'Data Scientist', 1500000, 'priya.rao@gmail.com', 9876543213, 'Bangalore');
INSERT INTO employee VALUES(15, 3, 'Vikram', 'Patel', 'Male', 'Business Analyst', 1400000, 'vikram.patel@gmail.com', 9876543214, 'Pune');
INSERT INTO employee VALUES(16, 3, 'Sonal', 'A', 'Female', 'Finance Manager', 1600000, 'sonal.mehta@gmail.com', 8951144517, 'Hassan');
INSERT INTO employee VALUES(17, 4, 'Rohit', 'Verma', 'Male', 'System Architect', 1700000, 'rohit.verma@gmail.com', 9876543216, 'Bangalore');
INSERT INTO employee VALUES(18, 4, 'Sneha', 'Deshmukh', 'Female', 'Consultant', 1350000, 'sneha.deshmukh@gmail.com', 9876543217, 'Udupi');
INSERT INTO employee VALUES(19, 5, 'Deepak', 'Joshi', 'Male', 'Branch Manager', 1500000, 'deepak.joshi@gmail.com', 8951144679, 'Telangana');
INSERT INTO employee VALUES(20, 5, 'Rina', 'G', 'Female', 'Operations Head', 1600000, 'rina.goswami@gmail.com', 9876543219, 'karnool');
INSERT INTO employee VALUES(21, 6, 'Sunil', 'Nair', 'Male', 'Network Engineer', 1400000, 'sunil.nair@gmail.com', 9876543220, 'Delhi');
INSERT INTO employee VALUES(22, 6, 'Manju', 'Pillai', 'Female', 'Marketing Manager', 1550000, 'manju.pillai@gmail.com', 9876543221, 'Delhi');
INSERT INTO employee VALUES(23, 7, 'Harish', 'Gowda', 'Male', 'Product Manager', 1450000, 'harish.sinha@gmail.com', 9876543222, 'Pune');
INSERT INTO employee VALUES(24, 7, 'Sujata', 'Iyer', 'Female', 'Quality Analyst', 1300000, 'sujata.iyer@gmail.com', 8660084035, 'Chennai');
INSERT INTO employee VALUES(25, 8, 'Alok', 'Pandey', 'Male', 'Relationship Manager', 1350000, 'alok.pandey@gmail.com', 9876543224, 'Hyderabad');
INSERT INTO employee VALUES(26, 8, 'Kavita', 'Shah', 'Female', 'Credit Analyst', 1400000, 'kavita.shah@gmail.com', 9876543225, 'Chennai');
INSERT INTO employee VALUES(27, 9, 'Gaurav', 'Desai', 'Male', 'Project Engineer', 1500000, 'gaurav.desai@gmail.com', 9739745434, 'Assam');
INSERT INTO employee VALUES(28, 9, 'Meena', 'Naik', 'Female', 'Civil Engineer', 1450000, 'meena.kulkarni@gmail.com', 9876543227, 'Noida');
INSERT INTO employee VALUES(29, 10, 'Karan', 'Kumar', 'Male', 'Financial Analyst', 1550000, 'karan.gupta@gmail.com', 9876543228, 'Mangalore');
INSERT INTO employee VALUES(30, 10, 'Pooja', 'Bhatt', 'Female', 'HR Manager', 1450000, 'pooja.bhatt@gmail.com', 8904733310, 'Bangalore');

select * from company;
select * from employee;

select company_name from company order by founded_year;
select * from employee limit 10;
select * from company limit 5,3;
select count(*),salary from employee group by salary having salary>1500000;
select sum(salary) as sal,salary from employee group by salary having sal>2000000;
select avg(salary),company_id from employee group by company_id;
update employee set salary= case when company_id=3 then salary*1.30 when company_id=1 then salary*1.21 else salary end;


CREATE TABLE product (product_id INT PRIMARY KEY,product_name VARCHAR(100) NOT NULL,
category VARCHAR(50),brand VARCHAR(50),price bigint,stock_quantity INT,supplier_name VARCHAR(100),
manufacture_date DATE,expiry_date DATE,weight int);
desc product;
CREATE TABLE orders (order_id INT PRIMARY KEY ,product_id INT,customer_name VARCHAR(100) NOT NULL,phone_number bigint,
delivery_date DATE,quantity INT,total_price bigint,payment_method VARCHAR(50),order_status VARCHAR(50),
tracking_number VARCHAR(100),FOREIGN KEY (product_id) REFERENCES product(product_id));
desc orders;



INSERT INTO product VALUES(1, 'Samsung Galaxy S21', 'Electronics', 'Samsung', 70000, 50, 'Samsung India', '2023-01-15', NULL, 180);
INSERT INTO product VALUES(2, 'Dell XPS 13', 'Electronics', 'Dell', 120000, 30, 'Dell India', '2022-11-25', NULL, 1200);
INSERT INTO product VALUES(3, 'Sony WH', 'Electronics', 'Sony', 25000, 100, 'Sony India', '2023-02-10', NULL, 254);
INSERT INTO product VALUES(4, 'Nike Air Max', 'Footwear', 'Nike', 9000, 200, 'Nike India', '2023-03-01', NULL, 300);
INSERT INTO product VALUES(5, 'Adidas Shoes', 'Footwear', 'Adidas', 10000, 150, 'Adidas India', '2023-01-20', NULL, 310);
INSERT INTO product VALUES(6, 'iPhone 14', 'Electronics', 'Apple', 130000, 40, 'Apple India', '2023-04-01', NULL, 174);
INSERT INTO product VALUES(7, 'Asus ROG Phone 5', 'Electronics', 'Asus', 70000, 70, 'Asus India', '2023-05-15', NULL, 240);
INSERT INTO product VALUES(8, 'Bose QuietComfort 35 II', 'Electronics', 'Bose', 29000, 80, 'Bose India', '2023-02-25', NULL, 235);
INSERT INTO product VALUES(9, 'Puma Shoes', 'Footwear', 'Puma', 8000, 250, 'Puma India', '2023-01-05', NULL, 320);
INSERT INTO product VALUES(10, 'Lenovo ThinkPad', 'Electronics', 'Lenovo', 110000, 35, 'Lenovo India', '2023-02-18', NULL, 1300);
INSERT INTO product VALUES(11, 'Sony PlayStation 5', 'Gaming', 'Sony', 50000, 60, 'Sony India', '2023-03-20', NULL, 4500);
INSERT INTO product VALUES(12, 'Canon EOS R5', 'Electronics', 'Canon', 320000, 15, 'Canon India', '2022-12-15', NULL, 738);
INSERT INTO product VALUES(13, 'MacBook Pro', 'Electronics', 'Apple', 200000, 25, 'Apple India', '2023-04-10', NULL, 1400);
INSERT INTO product VALUES(14, 'HP', 'Electronics', 'HP', 150000, 20, 'HP India', '2023-01-30', NULL, 1200);
INSERT INTO product VALUES(15, 'JBL Flip 5', 'Electronics', 'JBL', 10000, 110, 'JBL India', '2023-02-12', NULL, 540);
INSERT INTO product VALUES(16, 'Samsung TV', 'Electronics', 'Samsung', 180000, 25, 'Samsung India', '2023-03-15', NULL, 4500);
INSERT INTO product VALUES(17, 'Fitbit', 'Wearables', 'Fitbit', 20000, 100, 'Fitbit India', '2023-02-22', NULL, 39);
INSERT INTO product VALUES(18, 'Mi Band', 'Wearables', 'Xiaomi', 3000, 500, 'Xiaomi India', '2023-03-01', NULL, 24);
INSERT INTO product VALUES(19, 'GoPro HERO9', 'Electronics', 'GoPro', 45000, 70, 'GoPro India', '2023-01-10', NULL, 158);
INSERT INTO product VALUES(20, 'Microsoft Surface Pro 7', 'Electronics', 'Microsoft', 120000, 30, 'Microsoft India', '2023-02-28', NULL, 770);


INSERT INTO orders VALUES(21, 1, 'Rajesh Kumar', 8904733310, '2023-08-01', 1, 70000, 'Credit Card', 'Delivered', 'TRK123456789');
INSERT INTO orders VALUES(22, 1, 'Anita Singh', 9876543211, '2023-08-05', 1, 70000, 'Debit Card', 'Delivered', 'TRK987654321');
INSERT INTO orders VALUES(23, 2, 'Amit Sharma', 9876543212, '2023-08-07', 2, 50000, 'UPI', 'Pending', 'TRK456123789');
INSERT INTO orders VALUES(24, 2, 'Priya Rao', 8660084035, '2023-08-09', 3, 50000, 'Cash on Delivery', 'Delivered', 'TRK321654987');
INSERT INTO orders VALUES(25, 2, 'Vikram Patel', 9876543214, '2023-08-11', 2, 50000, 'Net Banking', 'Shipped', 'TRK159753486');
INSERT INTO orders VALUES(26, 6, 'Sonal Mehta', 8976032451, '2023-08-13', 1, 130000, 'Credit Card', 'Delivered', 'TRK753951846');
INSERT INTO orders VALUES(27, 6, 'Rohit Verma', 9876543216, '2023-08-15', 2, 140000, 'Debit Card', 'Pending', 'TRK654987321');
INSERT INTO orders VALUES(28, 8, 'Sneha Deshmukh', 9876543217, '2023-08-17', 1, 29000, 'UPI', 'Shipped', 'TRK852369741');
INSERT INTO orders VALUES(29, 3, 'Deepak Joshi', 7788990067, '2023-08-19', 4, 32000, 'Cash on Delivery', 'Delivered', 'TRK456987123');
INSERT INTO orders VALUES(30, 3, 'Rina Goswami', 8952244517, '2023-08-21', 1, 32000, 'Net Banking', 'Pending', 'TRK369258147');
INSERT INTO orders VALUES(31, 11, 'Sunil Nair', 9876543220, '2023-08-23', 1, 50000, 'Credit Card', 'Delivered', 'TRK147258369');
INSERT INTO orders VALUES(32, 12, 'Manju Pillai', 8951144517, '2023-08-25', 1, 320000, 'Debit Card', 'Shipped', 'TRK258369147');
INSERT INTO orders VALUES(33, 12, 'Harish Sinha', 9876543222, '2023-08-27', 2, 320000, 'UPI', 'Delivered', 'TRK369147258');
INSERT INTO orders VALUES(34, 12, 'Sujata Iyer', 8951144235, '2023-08-29', 1, 320000, 'Cash on Delivery', 'Pending', 'TRK987123654');
INSERT INTO orders VALUES(35, 15, 'Alok Pandey', 8660084045, '2023-08-31', 2, 20000, 'Net Banking', 'Shipped', 'TRK123789654');
INSERT INTO orders VALUES(36, 16, 'Kavita Shah', 9876543225, '2023-09-02', 1, 180000, 'Credit Card', 'Delivered', 'TRK321987456');
INSERT INTO orders VALUES(37, 12, 'Gaurav Desai', 9739611655, '2023-09-04', 1, 320000, 'Debit Card', 'Shipped', 'TRK456321789');
INSERT INTO orders VALUES(38, 18, 'Meena Kulkarni', 9876543227, '2023-09-06', 3, 9000, 'UPI', 'Pending', 'TRK741852963');
INSERT INTO orders VALUES(39, 20, 'Karan Gupta', 9876543228, '2023-09-08', 1, 120000, 'Cash on Delivery', 'Delivered', 'TRK987456123');
INSERT INTO orders VALUES(40, 20, 'Pooja Bhatt', 9876543229, '2023-09-10', 1, 120000, 'Net Banking', 'Shipped', 'TRK654123987');

select * from orders;
select * from product;
select * from orders order by total_price;
select * from product limit 10;
select * from product limit 10,4;
select count(product_id) as pid,product_id from orders group by product_id having pid>1;
select avg(total_price) as avg_price from orders group by product_id having avg_price>50000;
select sum(total_price) as sum_p,total_price from orders group by product_id having sum_p>140000;
update orders set total_price= case when product_id=2 then total_price*1.15 else total_price end;


CREATE TABLE student (student_id INT PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,
date_of_birth DATE,gender VARCHAR(10),email VARCHAR(100),phone_number BIGINT,address VARCHAR(200),city VARCHAR(50),
state VARCHAR(50));


CREATE TABLE course (course_id INT PRIMARY KEY,course_name VARCHAR(100) NOT NULL,course_code VARCHAR(20) NOT NULL UNIQUE,
department VARCHAR(50),credit_hours INT,instructor_name VARCHAR(100),start_date DATE,end_date DATE,course_fee bigint,
classroom VARCHAR(50));


CREATE TABLE enrollment (enrollment_id INT PRIMARY KEY,student_id INT,course_id INT,enrollment_date DATE,
grade VARCHAR(5),attendance_percentage int,FOREIGN KEY (student_id) REFERENCES student(student_id),
FOREIGN KEY (course_id) REFERENCES course(course_id));




INSERT INTO student VALUES(1, 'Rajesh', 'Kumar', '2000-05-15', 'Male', 'rajeshkumar@gmail.com', 8951144517, 'Hebbala', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(2, 'Anita', 'Gowda', '2002-08-23', 'Female', 'anitaga@gmail.com', 9876543211, 'Oak Street', 'Mumbai', 'Maharashtra');
INSERT INTO student VALUES(3, 'Amit', 'Patel', '2001-11-12', 'Male', 'amitpatel@example.com', 9739611655, 'Some Street', 'Ahmedabad', 'Gujarat');
INSERT INTO student VALUES(4, 'Priya', 'Naik', '2000-07-07', 'Female', 'priyar@gmail.com', 9876543213, 'Virupakshipuram', 'Chennai', 'Tamil Nadu');
INSERT INTO student VALUES(5, 'Vikram', 'Singh', '2002-01-25', 'Male', 'vikram@gmail.com', 8660084035, 'Palamenari', 'Hyderabad', 'Telangana');
INSERT INTO student VALUES(6, 'Sonal', 'Desai', '2000-03-18', 'Female', 'sonal@gmail.com', 9876543215, 'Cedar Street', 'Pune', 'Maharashtra');
INSERT INTO student VALUES(7, 'Rohit', 'Kumar', '2001-10-30', 'Male', 'rohit@gmail.com', 9750745434, 'Sahakrnagar', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(8, 'Sneha', 'Rajesh', '2001-06-05', 'Female', 'sneha@gmail.com', 9876543217, 'Venkatala', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(9, 'Deepak', 'Gowda', '2000-02-11', 'Male', 'deepak123@gmail.com', 9739745435, 'Kogilu cross', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(10, 'Rina', 'Gowda', '2003-12-19', 'Female', 'rina456@gmail.com', 9876543219, 'Vv puram', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(11, 'Sunil', 'Kumar', '2001-09-22', 'Male', 'sunil09@gmail.com', 9876543220, 'Ash Street', 'Thiruvananthapuram', 'Kerala');
INSERT INTO student VALUES(12, 'Manju', 'Prakash', '2002-04-09', 'Female', 'manju@gmail.com', 8904733310, 'Polar', 'Mysore', 'Karnataka');
INSERT INTO student VALUES(13, 'Harish', 'Shetty', '2000-07-13', 'Male', 'harish@gmail.com', 9876543222, 'Avalahalli', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(14, 'Sujata', 'Iyer', '2003-11-26', 'Female', 'sujata.iyer@gmail.com', 9876543223, 'Magnolia St', 'Goa', 'Goa');
INSERT INTO student VALUES(15, 'Alok', 'Shetty', '2001-03-14', 'Male', 'alok@gmail.com', 9876543224, 'TC Palya', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(16, 'Kavita', 'Gowda', '2000-12-01', 'Female', 'kavitagowda@gmail.com', 8906754410, 'MG Road', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(17, 'Gaurav', 'Iyer', '2003-08-07', 'Male', 'gauravdesai@gmail.com', 9876543226, 'Kudla', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(18, 'Meena', 'Kumari', '2002-02-21', 'Female', 'meenakulkarni01@gmail.com', 8951122679, 'HSR layout', 'Bangalore', 'Karnataka');
INSERT INTO student VALUES(19, 'Karan', 'Johar', '2000-11-09', 'Male', 'karan2000@gmail.com', 9876543228, 'Doomlet Circle', 'Kolar', 'Karnataka');
INSERT INTO student VALUES(20, 'Pooja', 'Bhatt', '2002-10-02', 'Female', 'pooja.bhatt@gmail.com', 9876543229, 'RT nagar', 'Bangalore', 'Karnataka');


INSERT INTO course values(21, 'Data Structures', 'CS101', 'Computer Science', 4, 'Dr. Suresh Kumar', '2023-07-01', '2023-12-01', 50000, '101');
INSERT INTO course values(22, 'Database Management', 'CS102', 'Computer Science', 4, 'Dr. Neha Gupta', '2023-07-01', '2023-12-01', 45000, '102');
INSERT INTO course values(23, 'Operating Systems', 'CS103', 'Computer Science', 4, 'Dr. Amit Desai', '2023-07-01', '2023-12-01', 47000, '103');
INSERT INTO course values(24, 'Network Security', 'CS104', 'Computer Science', 4, 'Dr. Rina Kapoor', '2023-07-01', '2023-12-01', 55000, '104');
INSERT INTO course values(25, 'Artificial Intelligence', 'CS105', 'Computer Science', 4, 'Dr. Alok Verma', '2023-07-01', '2023-12-01', 60000, '105');
INSERT INTO course values(26, 'Linear Algebra', 'MATH101', 'Mathematics', 3, 'Dr. Ravi Sharma', '2023-07-01', '2023-12-01', 30000, '201');
INSERT INTO course values(27, 'Calculus', 'MATH102', 'Mathematics', 3, 'Dr. Priya Iyer', '2023-07-01', '2023-12-01', 32000, '202');
INSERT INTO course values(28, 'Statistics', 'MATH103', 'Mathematics', 3, 'Dr. Kavita Joshi', '2023-07-01', '2023-12-01', 31000, '203');
INSERT INTO course values(29, 'Discrete Mathematics', 'MATH104', 'Mathematics', 3, 'Dr. Gaurav Patel', '2023-07-01', '2023-12-01', 35000, '204');
INSERT INTO course values(30, 'Economics', 'ECON101', 'Economics', 3, 'Dr. Meena Kulkarni', '2023-07-01', '2023-12-01', 45000, '301');
INSERT INTO course values(31, 'Microeconomics', 'ECON102', 'Economics', 3, 'Dr. Harish Sinha', '2023-07-01', '2023-12-01', 43000, '302');
INSERT INTO course values(32, 'Macroeconomics', 'ECON103', 'Economics', 3, 'Dr. Sujata Rao', '2023-07-01', '2023-12-01', 44000, '303');
INSERT INTO course values(33, 'Introduction to Psychology', 'PSY101', 'Psychology', 3, 'Dr. Rina Goswami', '2023-07-01', '2023-12-01', 48000, '401');
INSERT INTO course values(34, 'Cognitive Psychology', 'PSY102', 'Psychology', 3, 'Dr. Rohit Verma', '2023-07-01', '2023-12-01', 49000, '402');
INSERT INTO course values(35, 'Social Psychology', 'PSY103', 'Psychology', 3, 'Dr. Sneha Deshmukh', '2023-07-01', '2023-12-01', 46000, '403');
INSERT INTO course values(36, 'Developmental Psychology', 'PSY104', 'Psychology', 3, 'Dr. Vikram Mehta', '2023-07-01', '2023-12-01', 47000, '404');
INSERT INTO course values(37, 'Physics I', 'PHYS101', 'Physics', 4, 'Dr. Sunil Nair', '2023-07-01', '2023-12-01', 50000, '501');
INSERT INTO course values(38, 'Physics II', 'PHYS102', 'Physics', 4, 'Dr. Manju Pillai', '2023-07-01', '2023-12-01', 51000, '502');
INSERT INTO course values(39, 'Quantum Mechanics', 'PHYS103', 'Physics', 4, 'Dr. Harish Sinha', '2023-07-01', '2023-12-01', 52000, '503');
INSERT INTO course values(40, 'Thermodynamics', 'PHYS104', 'Physics', 4, 'Dr. Alok Pandey', '2023-07-01', '2023-12-01', 53000, '504');


INSERT INTO enrollment VALUES(41, 1, 21, '2023-07-05', 'A', 95);
INSERT INTO enrollment VALUES(42, 1, 22, '2023-07-05', 'B+', 90);
INSERT INTO enrollment VALUES(43, 2, 21, '2023-07-06', 'A-', 88);
INSERT INTO enrollment VALUES(44, 2, 22, '2023-07-06', 'B', 85);
INSERT INTO enrollment VALUES(45, 3, 23, '2023-07-07', 'A', 92);
INSERT INTO enrollment VALUES(46, 3, 24, '2023-07-07', 'A-', 89);
INSERT INTO enrollment VALUES(47, 4, 23, '2023-07-08', 'B+', 87);
INSERT INTO enrollment VALUES(48, 4, 28, '2023-07-08', 'B', 85);
INSERT INTO enrollment VALUES(49, 5, 24, '2023-07-09', 'A', 94);
INSERT INTO enrollment VALUES(50, 5, 30, '2023-07-09', 'B+', 90);
INSERT INTO enrollment VALUES(51, 6, 29, '2023-07-10', 'A-', 88);
INSERT INTO enrollment VALUES(52, 6, 32, '2023-07-10', 'B', 86);
INSERT INTO enrollment VALUES(53, 7, 29, '2023-07-11', 'A', 91);
INSERT INTO enrollment VALUES(54, 7, 34, '2023-07-11', 'B+', 89);
INSERT INTO enrollment VALUES(55, 8, 34, '2023-07-12', 'A-', 88);
INSERT INTO enrollment VALUES(56, 8, 36, '2023-07-12', 'B', 87);
INSERT INTO enrollment VALUES(57, 9, 27, '2023-07-13', 'A', 93);
INSERT INTO enrollment VALUES(58, 9, 38, '2023-07-13', 'B+', 91);
INSERT INTO enrollment VALUES(59, 10, 27, '2023-07-14', 'A-', 89);
INSERT INTO enrollment VALUES(60, 10, 40, '2023-07-14', 'B', 87);


select * from student;
select * from course;
select * from enrollment;
select * from student order by student_id desc;
select * from student limit 3;
select * from student limit 10,2;
select count(student_id) as noofstdincourse,course_id from enrollment group by course_id having noofstdincourse>1;
update enrollment set grade= case when course_id=21 and student_id=1 then 'B' else grade end;