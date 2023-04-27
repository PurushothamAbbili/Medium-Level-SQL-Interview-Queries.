CREATE DATABASE IF NOT EXISTS practice;
USE practice;

-- Creating `strings` table and inserting values.

CREATE TABLE strings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(20),
    date DATE,
    description VARCHAR(200),
    password VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO strings
	(name, email, address, phone, date, description, password, city)
VALUES 
	('Abhinav Kumar', 'abhinav.kumar@gmail.com', 'Street, New Delhi', '+91 9999555501', '2022-05-01', 'This is an important message.', 'Abhinav1234', 'Noida'),
	('Ankit Sharma', 'ankit.sharma@hotmail.com', 'Road, Mumbai', '+91 9999555502', '2022-06-15', 'Urgent matter that needs attention.', 'Ankit@123', 'Pune'),
	('Anjali Singh', 'anjali.singh@yahoo.com', 'Avenue, Bangalore', '+91 9999555503', '2022-07-23', 'This is a critical issue.', 'Anjali5678', 'Hyderabad'),
	('Alok Gupta', 'alok.gupta@gmail.com', 'Boulevard, Kolkata', '+91 9999555504', '2022-08-11', 'Important update about the project.', 'GuptaAlok12', 'Delhi'),
	('Shreya Sharma', 'shreya.sharma@gmail.com', 'Lane, Pune', '+91 9999555505', '2022-09-05', 'Urgent response required.', 'Shreya#123', 'Mumbai'),
	('Sanjay Patel', 'sanjay.patel@outlook.com', 'Street, Ahmedabad', '+91 9999555506', '2022-10-02', 'Critical situation that needs immediate action.', 'Patel@123', 'Ahmedabad'),
	('Aarti Singh', 'aarti.singh@gmail.com', 'Road, Chennai', '+91 9999555507', '2022-11-17', 'Important notice about upcoming events.', 'SinghAarti123', 'Chennai'),
	('Akash Gupta', 'akash.gupta@fiver.com', 'Avenue, Hyderabad', '+91 9999555508', '2022-12-22', 'Urgent request for assistance.', 'GuptaAkash12', 'Jaipur'),
	('Rohit Sharma', 'rohit.sharma@gmail.com', 'Lane, Lucknow', '+91 9999555509', '2023-01-08', 'Critical matter that needs resolution.', 'SharmaRohit#12', 'Lucknow'),
	('Seema Singh', 'seema.singh@hotmail.com', 'Boulevard, Surat', '+91 9999555510', '2023-02-13', 'Important update about the company.', 'SinghSeema@123', 'Surat'),
	('Ritu Gupta', 'ritu.gupta@gmail.com', 'Street, Bhopal', '+91 9999555511', '2023-03-21', 'Urgent response required regarding the project.', 'GuptaRitu1234', 'Bhopal'),
	('Rahul Sharma', 'rahul.sharma@gmail.com', 'Road, Chandigarh', '+91 9999555512', '2023-04-05', 'Critical situation that requires immediate attention.', 'SharmaRahul@123', 'Chandigarh'),
	('Aarav Patel', 'aarav.patel@outlook.com', 'Lane, Indore', '+91 9999555513', '2023-04-20', 'Important update about the company.', 'Patel@1435', ' New Delhi'),
  ('Sakshi Gupta', 'sakshi.gupta@gmail.com', 'Avenue, Jaipur', '+91 9999555514', '2023-05-10', 'This is an important update about the product.', 'GuptaSakshi@123', 'Jaipur'),
	('Sahil Singh', 'sahil.singh@gmail.com', 'Street, Jodhpur', '+91 9999555515', '2023-06-18', 'Urgent response required regarding the matter.', 'SinghSahil#123', 'Jodhpur'),
	('Anushka Sharma', 'anushka.sharma@hotmail.com', 'Road, Guwahati', '+91 9999555516', '2023-07-26', 'Critical situation that needs immediate attention.', 'SharmaAnushka12', 'Guwahati'),
	('Aditya Patel', 'aditya.patel@yahoo.com', 'Lane, Nagpur', '+91 9999555517', '2023-08-11', 'Important notice about upcoming events.', 'PatelAditya123', 'Nagpur'),
	('Shivam Singh', 'shivam.singh@gmail.com', 'Boulevard, Kanpur', '+91 9999555518', '2023-09-08', 'Urgent request for assistance.', 'SinghShivam#12', 'Kanpur'),
	('Anjali Gupta', 'anjali.gupta@gmail.com', 'Street, Ranchi', '+91 9999555519', '2023-10-15', 'Critical matter that needs resolution.', 'GuptaAnjali@123', 'Ranchi'),
	('Aryan Sharma', 'aryan.sharma@outlook.com', 'Road, Varanasi', '+91 9999555520', '2023-11-20', 'Important update about the company.', 'SharmaAryan123', 'Varanasi'),
	('Ayushi Singh', 'ayushi.singh@bing.com', 'Lane, Patna', '+91 9999555521', '2023-12-23', 'Urgent response required regarding the project.', 'SinghAyushi#123', 'Patna'),
	('Aniket Patel', 'aniket.patel@gmail.com', 'Avenue, Raipur', '+91 9999555522', '2024-01-06', 'Critical situation that requires immediate attention.', 'PatelAniket12', 'Raipur'),
	('Ananya Gupta', 'ananya.gupta@gmail.com', 'Street, Kanpur', '+91 9999555523', '2024-02-13', 'This is an important message.', 'GuptaAnanya123', 'Kanpur');

