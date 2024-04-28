 
---2nt avedenst---
    ---1---
  CREATE TABLE ISDB_JAVA(
    id NUMBER(6) NOT NULL,
    name VARCHAR2(30),
    salary NUMBER(8,2),
    hire_date DATE,
    address VARCHAR2(40),
    CONSTRAINT const_java_in PRIMARY KEY (id)
);

INSERT INTO ISDB_JAVA(id, name, salary, address)
VALUES(4571, 'sanaullah', 25000, 'Rajshahi');


   ---2---
  SELECT DEPARTMENT_NAME, AVG(salary)
FROM DEPARTMENTS
GROUP BY DEPARTMENT_NAME
HAVING MAX(salary) > 12000;

   ---3---
  select first_name
from EMPLOYEES
where lower(first_name) like's%'


---4---
  select avg(salary)
from EMPLOYEES
where job_id='SA_REP';

  ---5---
  SELECT first_name, hire_date
FROM EMPLOYEES
ORDER BY hire_date ASC;