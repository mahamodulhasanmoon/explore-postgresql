-- Active: 1694198936232@@127.0.0.1@5432@test1
-- ## CREATE a DATABASE
CREATE DATABASE learning_prizma

-- create a student TABLE
CREATE TABLE student(
    student_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(200),
    cgpa NUMERIC(1,2)
)

ALTER TABLE student RENAME TO learners;
-- for deleting 
DROP TABLE learners;

-- create a table with CONSTRAINT_SCHEMA
CREATE TABLE "user"(
    user_id INTEGER PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    email VARCHAR(255) UNIQUE
);
CREATE TABLE "user1"(
    user_id SERIAL,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE UNIQUE NOT NULL,
    PRIMARY KEY(user_id, username)
);

-- insert DATABASE
INSERT INTO user1 VALUES (1,'Mahamodul Hasan Moon','mhmoon492@gmail.com')

-- change constant 
INSERT INTO user1 (user_id,username,email) VALUES(2,'Mahamodul Hasan' ,'hello@gmail.com');

--  insert value ADD
INSERT INTO user1 (username,email) VALUES ('moon','test@hotmail.com');

select * from user1

-- change TABLE add COLUMN,remove COLUMN,data remove , setDefault values ,
-- table rename 



ALTER TABLE user1 
ADD COLUMN password VARCHAR(255) DEFAULT 'admin12' NOT NULL 

-- remove column  
ALTER TABLE user1 
alter COLUMN pass


--   creare table for employe and insert data

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (emp_id, emp_name, department, salary)
VALUES
    (1, 'John Doe', 'HR', 50000.00),
    (2, 'Jane Smith', 'IT', 60000.00),
    (3, 'Michael Johnson', 'Finance', 55000.00),
    (4, 'Emily Brown', 'HR', 52000.00);

    