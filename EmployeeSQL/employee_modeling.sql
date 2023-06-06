# Create the schema for the tables
departments
-
dept_no VARCHAR(20) PK FK >- dept_emp.dept_no
dept_name VARCHAR(40)

dept_emp
-
emp_no INTEGER PK
dept_no VARCHAR(20) PK

dept_manager
-
dept_no VARCHAR(20) PK FK >- departments.dept_no
emp_no INTEGER PK FK >- employees.emp_no

employees
-
emp_no INTEGER PK FK >- dept_emp.emp_no
emp_title_id VARCHAR(20) FK >- titles.title_id
birth_date DATE
first_name VARCHAR(30)
last_name VARCHAR(30)
sex CHAR(1)
hire_date DATE

salaries
-
emp_no INTEGER PK FK >- employees.emp_no
salary INTEGER

titles
-
title_id VARCHAR(20) PK
title VARCHAR(40)
