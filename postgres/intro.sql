-- Active: 1694198936232@@127.0.0.1@5432@test1
-- ## CREATE a DATABASE
CREATE DATABASE test1

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