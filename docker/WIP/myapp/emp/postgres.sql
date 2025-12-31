CREATE TABLE employee (
    emp_id        BIGSERIAL PRIMARY KEY,
    first_name    VARCHAR(50),
    last_name     VARCHAR(50),
    gender        VARCHAR(10),
    dob           DATE,
    typ           VARCHAR(20),
    salary        NUMERIC(10,2),
    status        VARCHAR(20)
);

INSERT INTO employee 
(emp_id, first_name, last_name, gender, dob, typ, salary, status)
VALUES
(1001, 'John',   'Smith',   'M',   '1988-04-12', 'EMPLOYEE',   85000.00, 'ACTIVE'),
(1002, 'Mary',   'Johnson', 'F', '1990-07-23', 'CONTRACTOR', 65000.00, 'ACTIVE'),
(1003, 'Robert', 'Brown',   'M',   '1985-11-05', 'EMPLOYEE',   95000.00, 'ACTIVE'),
(1004, 'Linda',  'Davis',   'F', '1992-02-17', 'EMPLOYEE',   72000.00, 'ON_LEAVE'),
(1005, 'David',  'Miller',  'M',   '1987-09-30', 'CONTRACTOR', 60000.00, 'ACTIVE'),
(1006, 'Susan',  'Wilson',  'F', '1995-01-14', 'EMPLOYEE',   68000.00, 'INACTIVE'),
(1007, 'James',  'Moore',   'M',   '1983-06-19', 'EMPLOYEE',   110000.00,'ACTIVE'),
(1008, 'Karen',  'Taylor',  'F', '1991-12-08', 'CONTRACTOR', 70000.00, 'ACTIVE'),
(1009, 'Michael','Anderson','M',   '1989-08-21', 'EMPLOYEE',   88000.00, 'TERMINATED'),
(1010, 'Nancy',  'Thomas',  'F', '1994-03-27', 'EMPLOYEE',   75000.00, 'ACTIVE');

SELECT * FROM employee ORDER BY emp_id;

