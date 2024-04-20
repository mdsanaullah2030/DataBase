create view  view_emp_100_days 
as
SELECT DISTINCT(job_id)
from EMPLOYEES
where CURRENT_date -hire_date > 100
GROUP BY job_id
HAVING COUNT(EMPLOYEE_ID)>3;

select * from view_emp_100_days

---2---
create view  view_result 
as
SELECT first_name,last_name,salary
from EMPLOYEES
where salary<10000;

select * from view_result  


