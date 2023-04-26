CREATE DATABASE IF NOT EXISTS practice;
USE practice;

-- Creating `employees` table and inserting values.

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(25),
    department VARCHAR(25),
    DOJ DATE,
    salary INT
);

INSERT INTO employees 
	(emp_id, emp_name, department, DOJ, salary) 
VALUES 
	(1001, "A", "sales", '2016-05-21', 10000),
	(1002, "B", "Marketing", '2017-03-31', 12000),
    (1003, "c", "R&D", '2018-01-14', 14000),
    (1004, "D", "sales", '2019-08-18', 15000),
    (1005, "F", "Marketing", '2022-06-22', 17000),
    (1006, "E", "R&D", '2017-10-02', 19000),
    (1007, "F", "HR", '2015-12-01', 20000);
    

-- Creating `customers` table and inserting values.

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    revenue DECIMAL(10, 2)
);

INSERT INTO customers 
	(customer_id, customer_name, revenue)
VALUES 
	(1, 'John Smith', 500.00),
	(2, 'Jane Doe', 750.25),
	(3, 'Bob Johnson', 1000.00),
	(4, 'Samantha Lee', 450.50),
	(5, 'David Kim', 1200.75),
	(6, 'Jennifer Chen', 800.00),
	(7, 'Michael Brown', 900.50),
	(8, 'Karen Davis', 650.25),
	(9, 'William Lee', 1100.00),
	(10, 'Amanda Jones', 550.50);
       
    
-- Creating `orders` table and inserting values.

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    order_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

INSERT INTO orders
	(order_id, customer_id, product_id, order_date, order_amount)
VALUES 
	(1, 2, 1, '2022-03-15', 100.00),
	(2, 5, 2, '2023-03-16', 150.25),
	(3, 3, 4, '2022-03-17', 200.00),
	(4, 7, 3, '2022-03-18', 75.50),
	(5, 1, 1, '2021-03-19', 250.75),
	(6, 10, 3, '2022-03-20', 175.00),
	(7, 8, 6, '2022-03-21', 300.50),
	(8, 9, 2, '2021-03-22', 225.25),
	(9, 4, 2, '2023-03-23', 400.00),
	(10, 6, 3, '2022-03-24', 50.50),
	(11, 1, null, '2022-03-25', 300.00),
	(12, 2, 4, '2022-03-26', 175.25),
	(13, 7, null, '2022-03-27', 125.00),
	(14, 5, 5, '2021-03-28', 200.50),
	(15, 3, 1, '2022-03-29', 150.25),
	(16, 10, 6,  '2023-03-30', 225.00),
	(17, 8, null, '2022-03-31', 50.50),
	(18, 4, 4, '2023-04-01', 350.00),
	(19, 9, 2, '2022-04-02', 275.25),
	(20, 6, 1, '2022-04-03', 150.50);
       

-- Creating `products` table and inserting values.
      
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(35),
    price DECIMAL(10, 2)
);

INSERT INTO products 
	(product_id, product_name, price)
VALUES 
	(1, "Pizza", 150),
    (2, "Burger", 180),
    (3, "Biriyani", 320.00),
    (4, "French Freis", 85.75),
    (5, "Icecream", 45.50),
    (6, "Coffee", 20);