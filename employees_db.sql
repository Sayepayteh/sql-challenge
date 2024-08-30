CREATE TABLE departments(
    dept_no TEXT PRIMARY KEY,
    dept_name TEXT
);

CREATE TABLE titles(
    title_id TEXT PRIMARY KEY,
    title TEXT
);


CREATE TABLE employees(
    emp_no INT PRIMARY KEY,
    emp_title_id TEXT,
	birth_date DATE,
	first_name TEXT,
	last_name TEXT,
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	
);

CREATE TABLE dept_manager(
    dept_no TEXT,
    emp_no INT,
	PRIMARY KEY (dept_no, emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);


CREATE TABLE dep_emp(
    emp_no INT,
    dept_no TEXT,
	PRIMARY KEY (dept_no, emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

CREATE TABLE salaries(
    emp_no INT,
    salary INT,
	PRIMARY KEY (salary, emp_no), 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

