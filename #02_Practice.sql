---------------------------------
-- SQL String Matching Queries --
---------------------------------

-- Q1-Write an SQL query to find all rows in a table where the value in the 'name' column contains the word 'singh'.

SELECT 
    *
FROM
    strings
WHERE
    name LIKE '%singh%';


-- Q2-Write an SQL query to find all email addresses in a table that are from 'gmail.com'.

SELECT 
    *
FROM
    strings
WHERE
    email LIKE '%gmail.com';


-- Q3-Write an SQL query to find all rows in a table where the 'address' column starts with the word 'Street'.

SELECT 
    *
FROM
    strings
WHERE
    address LIKE 'Street%';


-- Q4-Write an SQL query to find all rows in a table where the 'phone' column contains the area code '+91'.

SELECT 
    *
FROM
    strings
WHERE
    phone LIKE '+91%';


-- Q5-Write an SQL query to find all rows in a table where the 'name' column starts with the letter 'A'.

SELECT 
    *
FROM
    strings
WHERE
    name LIKE 'A%';


-- Q6-Write an SQL query to find all rows in a table where the 'date' column is between two specific dates.

SELECT 
    *
FROM
    strings
WHERE
    date BETWEEN '2022-04-01' AND '2022-06-30';


-- Q7-Write an SQL query to find all rows in a table where the 'description' column contains any of the words 'important', or 'critical'.

SELECT 
    *
FROM
    strings
WHERE
    description LIKE '%important%'
        OR description LIKE '%critical%';


-- Q8-Write an SQL query to find all rows in a table where the 'password' column contains at least one uppercase letter and one digit and one special charecter.

SELECT 
    *
FROM
    strings
WHERE
    password REGEXP '[[:upper:]]'
        AND password REGEXP '[^a-zA-Z0-9]';


-- Q9-Write an SQL query to find all rows in a table where the 'name' column contains exactly ten characters.

SELECT 
    *
FROM
    strings
WHERE
    name LIKE '__________';


-- Q10-Write an SQL query to find all rows in a table where the 'city' column starts with the letter 'D' and ends with the letter 'i'.

SELECT 
    *
FROM
    strings
WHERE
    city LIKE 'D%i';
