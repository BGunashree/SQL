create database dept;
use dept;
CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    manager_id INT
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    phone_no bigint,
    salary bigint,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    budget bigint
);

CREATE TABLE employee_project (
    employee_project_id INT PRIMARY KEY,
    employee_id INT,
    project_id INT,
    assigned_date DATE,
    e_role VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (project_id) REFERENCES project(project_id)
);


INSERT INTO department VALUES(1, 'Human Resources', 'New York', 101);
INSERT INTO department VALUES(2, 'Finance', 'Chicago', 102);
INSERT INTO department VALUES(3, 'Engineering', 'Bangalore', 103);
INSERT INTO department VALUES(4, 'Marketing', 'Delhi', 104);
INSERT INTO department VALUES(5, 'Sales', 'Noida', 105);
INSERT INTO department VALUES(6, 'Legal', 'Pune', 106);
INSERT INTO department VALUES(7, 'IT', 'Washington', 107);
INSERT INTO department VALUES(8, 'Research', 'Mumbai', 108);
INSERT INTO department VALUES(9, 'Operations', 'Hyderabad', 109);
INSERT INTO department VALUES(10, 'Customer Support', 'Bangalore', 110);
INSERT INTO department VALUES(11, 'Quality Assurance', 'Detroit', 111);
INSERT INTO department VALUES(12, 'Supply Chain', 'Noida', 112);
INSERT INTO department VALUES(13, 'Procurement', 'Atlanta', 113);
INSERT INTO department VALUES(14, 'Product Management', 'Trivandrum', 114);
INSERT INTO department VALUES(15, 'Business Development', 'Delhi', 115);
select * from employee;

INSERT INTO employee VALUES(101, 'Akshay', 'Gowda', 1, 9739611655, 75000);

INSERT INTO employee VALUES(102, 'Anil', 'Kumar', 2, 8951144517, 85000);
INSERT INTO employee VALUES(103, 'Jeevan', 'Gowda', 3, 8951144679, 95000);
INSERT INTO employee VALUES(104, 'Lasya', 'Manjunath', 4, 8660084035, 70000);
INSERT INTO employee VALUES(105, 'Sowmya', 'Reddy', 5, 8904733310, 80000);
INSERT INTO employee VALUES(106, 'Soujanya', 'Reddy', 6,9800675432, 72000);
INSERT INTO employee VALUES(107, 'Rajendra', 'P', 7, 8961122456, 88000);
INSERT INTO employee VALUES(108, 'Darshan', 'Gowda', 8, 9739745334, 93000);
INSERT INTO employee VALUES(109, 'Mithun', 'CB', 9, 9739745434, 77000);
INSERT INTO employee VALUES(110, 'Pavan', 'Naik', 10,9379774329, 79000);
INSERT INTO employee VALUES(111, 'Shyam', 'Roy', 11, 9876543021, 83000);
INSERT INTO employee VALUES(112, 'Mohak', 'Sagar', 12, 8990077655, 87000);
INSERT INTO employee VALUES(113, 'Ankith', 'Shetty', 13, 8951133456, 90000);
INSERT INTO employee VALUES(114, 'Sushanth', 'Singh', 14, 8990084035, 91000);
INSERT INTO employee VALUES(115, 'Guna', 'Shree', 15, 9739611677, 89000);

INSERT INTO project VALUES(201, 'Project Alpha', '2023-01-01', '2023-12-31', 500000);
INSERT INTO project VALUES(202, 'Project Beta', '2023-02-01', '2023-11-30', 300000);
INSERT INTO project VALUES(203, 'Project Gamma', '2023-03-01', '2023-10-31', 200000);
INSERT INTO project VALUES(204, 'Project Delta', '2023-04-01', '2023-09-30', 150000);
INSERT INTO project VALUES(205, 'Project X', '2023-05-01', '2023-08-31', 100000);
INSERT INTO project VALUES(206, 'Project Y', '2023-06-01', '2023-07-31', 250000);
INSERT INTO project VALUES(207, 'Project Z', '2023-07-01', '2023-12-31', 350000);
INSERT INTO project VALUES(208, 'Project A', '2023-08-01', '2023-09-30', 450000);
INSERT INTO project VALUES(209, 'Project G', '2023-09-01', '2023-12-31', 550000);
INSERT INTO project VALUES(210, 'Project H', '2023-10-01', '2023-11-30', 600000);
INSERT INTO project VALUES(211, 'Project J', '2023-11-01', '2023-12-31', 650000);
INSERT INTO project VALUES(212, 'Project O', '2023-12-01', '2023-12-31', 700000);
INSERT INTO project VALUES(213, 'Project R', '2023-01-15', '2023-07-31', 750000);
INSERT INTO project VALUES(214, 'Project D', '2023-02-15', '2023-09-30', 800000);
INSERT INTO project VALUES(215, 'Project F', '2023-03-15', '2023-10-31', 850000);

INSERT INTO employee_project VALUES(301, 101, 201, '2023-01-10', 'Manager');
INSERT INTO employee_project VALUES(302, 102, 202, '2023-02-15', 'Analyst');
INSERT INTO employee_project VALUES(303, 103, 203, '2023-03-20', 'Engineer');
INSERT INTO employee_project VALUES(304, 104, 204, '2023-04-25', 'Designer');
INSERT INTO employee_project VALUES(305, 105, 205, '2023-05-30', 'Sales Lead');
INSERT INTO employee_project VALUES(306, 106, 206, '2023-06-15', 'Assistant Manager');
INSERT INTO employee_project VALUES(307, 107, 207, '2023-07-20', 'Senior Analyst');
INSERT INTO employee_project VALUES(308, 108, 208, '2023-08-25', 'Senior Engineer');
INSERT INTO employee_project VALUES(309, 109, 209, '2023-09-30', 'Senior Designer');
INSERT INTO employee_project VALUES(310, 110, 210, '2023-10-05', 'Sales Executive');
INSERT INTO employee_project VALUES(311, 111, 211, '2023-11-10', 'Quality Manager');
INSERT INTO employee_project VALUES(312, 112, 212, '2023-12-15', 'Supply Chain Lead');
INSERT INTO employee_project VALUES(313, 113, 213, '2023-01-15', 'Procurement Lead');
INSERT INTO employee_project VALUES(314, 114, 214, '2023-02-20', 'Product Manager');
INSERT INTO employee_project VALUES(315, 115, 215, '2023-03-25', 'Business Development Lead');


SELECT e.first_name, e.last_name, d.department_name, p.project_name, ep.e_role
FROM employee e
INNER JOIN department d ON e.department_id = d.department_id
INNER JOIN employee_project ep ON e.employee_id = ep.employee_id
INNER JOIN project p ON ep.project_id = p.project_id;

SELECT e.first_name, e.last_name
FROM employee e
LEFT JOIN department d ON e.department_id = d.department_id
LEFT JOIN employee_project ep ON e.employee_id = ep.employee_id
LEFT JOIN project p ON ep.project_id = p.project_id;

SELECT *
FROM employee e
RIGHT JOIN department d ON e.department_id = d.department_id
RIGHT JOIN employee_project ep ON e.employee_id = ep.employee_id
RIGHT JOIN project p ON ep.project_id = p.project_id;


SELECT e.first_name, e.last_name, d.department_name, p.project_name, ep.e_role
FROM employee e
INNER JOIN department d ON e.department_id = d.department_id
LEFT JOIN employee_project ep ON e.employee_id = ep.employee_id
LEFT JOIN project p ON ep.project_id = p.project_id;

SELECT e.first_name, e.last_name, d.department_name, p.project_name, ep.e_role
FROM employee e
INNER JOIN department d ON e.department_id = d.department_id
RIGHT JOIN employee_project ep ON e.employee_id = ep.employee_id
RIGHT JOIN project p ON ep.project_id = p.project_id;

SELECT e.first_name, e.last_name, d.department_name, p.project_name, ep.e_role
FROM employee e
LEFT JOIN department d ON e.department_id = d.department_id
RIGHT JOIN employee_project ep ON e.employee_id = ep.employee_id
RIGHT JOIN project p ON ep.project_id = p.project_id;

SELECT *
FROM employee e
RIGHT JOIN department d ON e.department_id = d.department_id
LEFT JOIN employee_project ep ON e.employee_id = ep.employee_id
LEFT JOIN project p ON ep.project_id = p.project_id;


SELECT *
FROM employee e
INNER JOIN department d ON e.department_id = d.department_id;



select * from employee;
select * from department;