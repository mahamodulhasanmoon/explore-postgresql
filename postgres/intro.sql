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

