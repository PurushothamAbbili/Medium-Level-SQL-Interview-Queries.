------------------------------------------
-- Medium SQL Level Interview Questions --
------------------------------------------

-- 1-Write a SQL query to find the second highest salary from an "employees" table.

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
	SELECT 
		salary,
        RANK() OVER(ORDER BY salary DESC) AS rnk 
	FROM
		employees
)
SELECT 
	salary AS second_highest_salary 
FROM 
	maximum_salary 
WHERE rnk = 2;


-- 2-Write a SQL query to display the top 5 customers with the highest total revenue.

SELECT 
    customer_id, customer_name, SUM(revenue) AS total_revenue
FROM
    customers
GROUP BY customer_id , customer_name
ORDER BY total_revenue DESC
LIMIT 5;


-- 3-Write a SQL query to list the number of orders placed by each customer in the year 2022.

SELECT 
    c.customer_name, COUNT(o.order_id) AS total_orders
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    YEAR(order_date) = 2022
GROUP BY c.customer_name;


-- 4-Write a SQL query to find the average salary of employees for each department in a "employees" table.

SELECT 
    department, ROUND(AVG(salary), 2) AS average_salary
FROM
    employees
GROUP BY department
ORDER BY average_salary DESC;


-- 5-Write a SQL query to find the names of all customers who have placed at least one order for more than $300.
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


-- 9-Write a SQL query to find the number of customers who have not placed any orders in the year 2022.

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