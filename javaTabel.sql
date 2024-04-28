create table java(
id number(6) not null,
name varchar2(30),
salary number(8,2),
hire_date DATE not null,
CONSTRAINT const_java_in PRIMARY key(id)

);
insert into java(id,name,salary,hire_date)
select employee_id,last_name,salary,hire_date
from employees;
select * from java;

desc JOBS;


create table jee_java(
id varchar2(30) not null,
JOB_TITLE varchar2(30) not null,
min_salary number(6),
max_salary number(6),
CONSTRAINT cnst_jee_java_id primary key (id)
)
insert into jee_java(id, JOB_TITLE,min_salary,max_salary)
values('bankar','IT_PROG',9000,20000) 

select * from jee_java;


