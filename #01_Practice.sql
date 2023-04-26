CREATE DATABASE IF NOT EXISTS practice;
USE practice;


-- 1-Write a SQL query to find the second highest salary from an "Employees" table

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(25),
    salary INT
);

INSERT INTO employees (emp_id,emp_name,salary) VALUES (1001,"A", 10000),(1002,"B", 12000),(1003,"c", 14000),(1004,"D", 15000),(1005,"F",17000),(1006,"E",19000),(1007,"F",20000);

-- APPROACH I (Using LIMIT)
SELECT 
    *
FROM
    employees
ORDER BY salary DESC
LIMIT 1 , 1;

-- APPROACH II (Using Subquery)
SELECT 
    MAX(salary) AS second_highest_salary
FROM
    employees
WHERE
    salary < (SELECT 
            MAX(salary)
        FROM
            employees);


-- APPROACH III (Using CTE)
WITH maximum_salary AS (
SELECT salary, RANK() OVER(ORDER BY salary DESC) AS rnk FROM employees
)
SELECT salary AS second_highest_salary FROM maximum_salary WHERE rnk = 2;


-- 2-Write a SQL query to display the top 5 customers with the highest total revenue.
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    revenue DECIMAL(10 , 2 )
);

INSERT INTO customers (customer_id, customer_name, revenue)
VALUES (1, 'John Smith', 500.00),
       (2, 'Jane Doe', 750.25),
       (3, 'Bob Johnson', 1000.00),
       (4, 'Samantha Lee', 450.50),
       (5, 'David Kim', 1200.75),
       (6, 'Jennifer Chen', 800.00),
       (7, 'Michael Brown', 900.50),
       (8, 'Karen Davis', 650.25),
       (9, 'William Lee', 1100.00),
       (10, 'Amanda Jones', 550.50);

SELECT 
    customer_id, customer_name, SUM(revenue) AS total_revenue
FROM
    customers
GROUP BY customer_id , customer_name
ORDER BY total_revenue DESC
LIMIT 5;

-- 3-Write a SQL query to list the number of orders placed by each customer in the year 2022.
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10 , 2 ),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, order_amount)
VALUES (1, 2, '2022-03-15', 100.00),
       (2, 5, '2023-03-16', 150.25),
       (3, 3, '2022-03-17', 200.00),
       (4, 7, '2022-03-18', 75.50),
       (5, 1, '2021-03-19', 250.75),
       (6, 10, '2022-03-20', 175.00),
       (7, 8, '2022-03-21', 300.50),
       (8, 9, '2021-03-22', 225.25),
       (9, 4, '2023-03-23', 400.00),
       (10, 6, '2022-03-24', 50.50),
       (11, 1, '2022-03-25', 300.00),
       (12, 2, '2022-03-26', 175.25),
       (13, 7, '2022-03-27', 125.00),
       (14, 5, '2021-03-28', 200.50),
       (15, 3, '2022-03-29', 150.25),
       (16, 10, '2023-03-30', 225.00),
       (17, 8, '2022-03-31', 50.50),
       (18, 4, '2023-04-01', 350.00),
       (19, 9, '2022-04-02', 275.25),
       (20, 6, '2022-04-03', 150.50);


SELECT 
    c.customer_name, COUNT(o.order_id) AS total_orders
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    YEAR(order_date) = 2022
GROUP BY c.customer_name;


-- 4-Write a SQL query to find the average salary of employees for each department in a "Employees" table.
ALTER TABLE employees ADD COLUMN department VARCHAR(25);

UPDATE employees 
SET 
    department = 'Sales'
WHERE
    emp_id = 1001;
UPDATE employees 
SET 
    department = 'Marketing'
WHERE
    emp_id = 1002;
UPDATE employees 
SET 
    department = 'R&D'
WHERE
    emp_id = 1003;
UPDATE employees 
SET 
    department = 'Sales'
WHERE
    emp_id = 1004;
UPDATE employees 
SET 
    department = 'Marketing'
WHERE
    emp_id = 1005;
UPDATE employees 
SET 
    department = 'R&D'
WHERE
    emp_id = 1006;
UPDATE employees 
SET 
    department = 'HR'
WHERE
    emp_id = 1007;

SELECT 
    department, ROUND(AVG(salary), 2) AS average_salary
FROM
    employees
GROUP BY department
ORDER BY average_salary DESC;


-- 5-Write a SQL query to find the names of all customers who have placed at least one order for more than $1000.
SELECT 
    c.customer_name, COUNT(o.order_id) AS total_orders
FROM
    customers c
        RIGHT JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    o.order_amount >= 300
GROUP BY c.customer_name
HAVING total_orders >= 1;


-- 6-Write a SQL query to list the top 3 most popular products (by the number of orders) in the year 2022.
ALTER TABLE orders ADD COLUMN product_id INT;

UPDATE orders 
SET 
    product_id = 1
WHERE
    order_id = 1;
UPDATE orders 
SET 
    product_id = 2
WHERE
    order_id = 2;
UPDATE orders 
SET 
    product_id = 4
WHERE
    order_id = 3;
UPDATE orders 
SET 
    product_id = 3
WHERE
    order_id = 4;
UPDATE orders 
SET 
    product_id = 1
WHERE
    order_id = 5;
UPDATE orders 
SET 
    product_id = 3
WHERE
    order_id = 6;
UPDATE orders 
SET 
    product_id = 6
WHERE
    order_id = 7;
UPDATE orders 
SET 
    product_id = 2
WHERE
    order_id = 8;
UPDATE orders 
SET 
    product_id = 2
WHERE
    order_id = 9;
UPDATE orders 
SET 
    product_id = 3
WHERE
    order_id = 10;
UPDATE orders 
SET 
    product_id = 4
WHERE
    order_id = 12;
UPDATE orders 
SET 
    product_id = 5
WHERE
    order_id = 14;
UPDATE orders 
SET 
    product_id = 1
WHERE
    order_id = 15;
UPDATE orders 
SET 
    product_id = 6
WHERE
    order_id = 16;
UPDATE orders 
SET 
    product_id = 4
WHERE
    order_id = 18;
UPDATE orders 
SET 
    product_id = 2
WHERE
    order_id = 19;
UPDATE orders 
SET 
    product_id = 1
WHERE
    order_id = 20;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(35),
    price DECIMAL(10 , 2 )
);

INSERT INTO products (product_id, product_name, price)
VALUES (1, "Pizza", 150),(2,"Burger", 180),(3,"Biriyani", 320.00),(4,"French Freis", 85.75),(5,"Icecream", 45.50),(6,"Coffee",20);

SELECT 
    p.product_name, COUNT(o.order_id) AS total_orders
FROM
    orders o
        JOIN
    products p ON o.product_id = p.product_id
WHERE
    YEAR(o.order_date) = 2022
GROUP BY product_name
ORDER BY total_orders DESC
LIMIT 3;


-- 7-Write a SQL query to find the names of all employees who have worked for more than 5 years.
ALTER TABLE employees ADD COLUMN DOJ DATE;

UPDATE employees 
SET 
    DOJ = '2016-05-21'
WHERE
    emp_id = 1001;
UPDATE employees 
SET 
    DOJ = '2017-03-31'
WHERE
    emp_id = 1002;
UPDATE employees 
SET 
    DOJ = '2018-01-14'
WHERE
    emp_id = 1003;
UPDATE employees 
SET 
    DOJ = '2019-08-18'
WHERE
    emp_id = 1004;
UPDATE employees 
SET 
    DOJ = '2022-06-22'
WHERE
    emp_id = 1005;
UPDATE employees 
SET 
    DOJ = '2017-10-02'
WHERE
    emp_id = 1006;
UPDATE employees 
SET 
    DOJ = '2015-12-01'
WHERE
    emp_id = 1007;

SELECT 
    emp_name
FROM
    employees
WHERE
    DATEDIFF(NOW(), DOJ) / 365 > 5;
    

-- 8-Write a SQL query to list all orders that have at least one product with a price greater than $100.
SELECT 
    o.order_id
FROM
    orders o
        JOIN
    products p ON o.product_id = p.product_id
WHERE
    p.price > 100
GROUP BY o.order_id;


-- 9-Write a SQL query to find the number of customers who have not placed any orders in the year 2022
SELECT 
    COUNT(*) AS no_of_customers_with_no_orders
FROM
    customers
        LEFT JOIN
    (SELECT DISTINCT
        customer_id
    FROM
        orders
    WHERE
        YEAR(order_date) = 2022) AS orders_2022 ON customers.customer_id = orders_2022.customer_id
WHERE
    orders_2022.customer_id IS NULL;
    
    
-- 10-Write a SQL query to find the average number of orders placed by each customer.
SELECT 
    ROUND(COUNT(order_id) / COUNT(DISTINCT customer_id),
            0) AS avg_orders_per_customer
FROM
    orders;