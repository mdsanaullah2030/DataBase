
select last_name,HIRE_DATE
from EMPLOYEES
where HIRE_DATE>(select HIRE_DATE from EMPLOYEES where last_name='Davies' );

select e.last_name,e.HIRE_DATE,m.last_name,m. HIRE_DATE
from EMPLOYEES e join EMPLOYEES m
on e.manager_id=m. EMPLOYEE_ID
where e.HIRE_DATE<m. HIRE_DATE;

SELECT employee_id, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
FROM employees)

ORDER BY salary;

select employee_id,last_name,salary
from employees
where salary >
(select avg(salary)
from employees)

SELECT employee_id, last_name
FROM employees
WHERE department_id  IN (SELECT department_id department_id
FROM employees
WHERE  last_name like '%u%'); 

SELECT department_id, last_name, job_id
FROM employees
WHERE department_id  IN (SELECT department_id department_id
FROM departments
WHERE  department_name ='Executive');

select last_name
from employees
where salary > any (select salary from employees where department_id=60);

SELECT employee_id, last_name, salary
FROM employees
WHERE department_id  IN (SELECT  department_id
FROM employees
WHERE last_name  like '%u%')

AND  salary > (SELECT AVG(salary)
FROM employees);
