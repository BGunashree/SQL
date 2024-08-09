CREATE TABLE Customers (CustomerID int,FirstName VARCHAR(50),LastName VARCHAR(50),
Email VARCHAR(100),PhoneNumber VARCHAR(15),Age INT,RewardsPoints BIGINT,AccountBalance BIGINT);

CREATE TABLE Orders (orderID INT,item VARCHAR(100),brand varchar(30),productCategory VARCHAR(50),
orderStatus VARCHAR(50),Quantity INT,price BIGINT,totalAmount BIGINT);
    
CREATE TABLE Products (product_id INT,product_name VARCHAR(100),brand VARCHAR(50),category VARCHAR(50),
product_description VARCHAR(255),stocks_number INT,price BIGINT,discount BIGINT);
    
CREATE TABLE Employees (emp_id INT,fname VARCHAR(50),lname VARCHAR(50),position VARCHAR(50),
address VARCHAR(50),salary BIGINT,experience INT,Bonus BIGINT);

CREATE TABLE Suppliers (supplier_id INT ,supplier_name VARCHAR(100),contact_person VARCHAR(50),location VARCHAR(20),
phone BIGINT,Email VARCHAR(100),rating INT,total_products_supplied BIGINT);