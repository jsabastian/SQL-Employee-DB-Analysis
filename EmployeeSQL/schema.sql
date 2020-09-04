create table departments(
	dept_no varchar primary key not null,
	dept_name varchar not null
);

select * from departments;

create table dept_employees(
	emp_no int,
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_employees;

create table manager(
	dept_no varchar not null,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from manager;

create table employees(
	emp_no int primary key not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles(title_id)
);

select * from employees;

create table salaries(
	emp_no int not null,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);

select * from salaries;

create table titles(
	title_id varchar primary key not null,
	title varchar not null
);

select * from titles;
