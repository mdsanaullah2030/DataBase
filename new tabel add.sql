CREATE TABLE sales_reps(
id number(4)not null,
name varchar2(30),
salary  number(8,2),
COMMISSION_PCT number(2,2),
CONSTRAINT const_sales_reps_id PRIMARY key(id)
);

select * from sales_reps;

INSERT into sales_reps(id,name,salary,COMMISSION_PCT)
select EMPLOYEE_ID,LAST_NAME,SALARY,COMMISSION_PCT
from EMPLOYEES 
where job_id like'%REP%';
COMMIT;


   