CREATE TABLE employees 
             ( 
                          emp_no     INT PRIMARY KEY, 
                          birth_date DATE, 
                          first_name VARCHAR, 
                          last_name  VARCHAR, 
                          gender     VARCHAR hire_date date 
             ) 
CREATE TABLE departments 
             ( 
                          dept_no VARCHAR PRIMARY KEY, 
                          dept_name 
             ) 
CREATE TABLE salaries 
             ( 
                          emp_no    INT REFERENCES employees (emp_no), 
                          salary    INT, 
                          from_date date, 
                          to_date   date 
             ) 
CREATE TABLE titles 
             ( 
                          emp_no    INT REFERENCES employees (emp_no), 
                          title     VARCHAR, 
                          from_date date, 
                          to_date   date 
             ) 
CREATE TABLE dept_manager 
             ( 
                          dept_no   VARCHAR REFERENCES departments (dept_no), 
                          emp_no    INT REFERENCES employees (emp_no), 
                          from_date date, 
                          to_date   date 
             ) 
CREATE TABLE dept_emp 
             ( 
                          emp_no    INT REFERENCES employees (emp_no), 
                          dept_no   VARCHAR REFERENCES departments (dept_no), 
                          from_date date, 
                          to_date   date 
             )