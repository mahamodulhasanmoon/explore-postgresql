SELECT * FROM courses

CREATE TABLE courses (
    course_name VARCHAR(255) ,
    description VARCHAR(255) ,
    publishDate  DATE
)

INSERT INTO courses (course_name, description, publishDate)
VALUES
('postgres', 'A complete development series','2022-07-13'),
('postgres', 'A complete development series','2022-07-13'),
('postgres', 'A complete development series','2022-07-13'),
('postgres', 'A complete development series','2022-07-13'),
('postgres', 'A complete development series','2022-07-13');

-- update conntent

UPDATE courses 
set course_name = 'A complete development '
WHERE course_name = 'postgres'

DELETE FROM courses 
set course_name = 'A complete development '
WHERE course_name = 'postgres'