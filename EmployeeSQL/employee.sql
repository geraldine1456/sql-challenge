--DROP TABLE Departments,Dept_Employee, Dept_Manager,Employee_Details, Salaries,Titles ;

-- Create Departments Table
CREATE TABLE departments (
    dept_no VARCHAR (10) NOT NULL,
    dept_name VARCHAR (30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Create Dept-Employee Table
CREATE TABLE dept_emp(
    emp_no INT NOT NULL, 
    dept_no VARCHAR (10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create Department_Manager Table (Composite Key)
CREATE TABLE dept_manager (
    dept_no VARCHAR (10) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Create Employee Details Table
CREATE TABLE employees (
    emp_no INT NOT NULL ,
    emp_title_id VARCHAR (10)NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
    sex VARCHAR (1) CHECK (sex IN ('M', 'F'))NOT NULL,
	hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	PRIMARY KEY (emp_no)
);

-- Create Salaries Table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);

-- Create Titles Table
CREATE TABLE titles (
    title_id VARCHAR (10) NOT NULL ,
    title VARCHAR (30) NOT NULL,
	PRIMARY KEY (title_id)
);

select * from departments;
select * from dept_emp; 
select * from dept_manager; 
select * from employees;
select * from salaries;
select * from titles;
