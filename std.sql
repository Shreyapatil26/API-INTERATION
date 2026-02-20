create database dbs;
use dbs;
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    roll_no INT UNIQUE NOT NULL,
    course VARCHAR(50),
    semester INT,
    division VARCHAR(10),
    email VARCHAR(100),
    mobile_no VARCHAR(15)
);
INSERT INTO student (name, roll_no, course, semester, division, email, mobile_no)
VALUES 
('Anita Patil', 101, 'BCA', 1, 'A', 'anita@gmail.com', '9876543210'),
('Rahul Desai', 102, 'BCA', 2, 'B', 'rahul@gmail.com', '9123456780'),
('Sneha Kulkarni', 103, 'BCA', 3, 'A', 'sneha@gmail.com', '9988776655'),
('Aman Sharma', 104, 'BCA', 1, 'C', 'aman@gmail.com', '9090909090');
select * from students;


