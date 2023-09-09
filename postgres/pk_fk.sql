SELECT * FROM user1

-- employee TABLE each  enployee belongs to a depertment

-- depertment TABLE 
-- each depertment has many employees
create TABLE Depertment (
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(50)
)

INSERT into depertment VALUES(1,'Software Engineering')


-- depertment TABLE 
-- each depertment has many employees

create TABLE Employee(
    emp_ID SERIAL PRIMARY KEY,
    empName VARCHAR(50) NOT NULL,
    dept_id INT,
    CONSTRAINT fk_constraint_dpt 
    FOREIGN KEY (dept_id)
    REFERENCES Depertment (deptID)
)


INSERT into employee VALUES(1,'Mahamodul')
