# sql-challenge - Analyze Fictional Company Data

# Prerequisites
    SQL database system installed (PostgreSQL)

# Installation
    git clone https://github.com/geraldine1456/sql-challenge.git
    # includes 6 csv file that corresponds to the table
    # employee.sql - for table schema
    # employee_queries.sql - for queries
    # employee_erd - entity relationship diagram

# Junction Tables with Composite Keys
    TABLE dept_emp  (emp_no and dept_no)
    TABLE dept_manager  (dept_no, emp_no)

# Primary Keys, Foreign Keys 
    TABLE departments 
        PRIMARY KEY (dept_no)
    TABLE dept_emp 
        FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	    PRIMARY KEY (emp_no, dept_no)
    TABLE dept_manager
        FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
        FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
        PRIMARY KEY (dept_no, emp_no),
    TABLE employees
        FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	    PRIMARY KEY (emp_no)
    TABLE salaries
        FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	    PRIMARY KEY (emp_no)
    TABLE titles
        PRIMARY KEY (title_id)

