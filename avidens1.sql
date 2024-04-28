 ----1---

CREATE TABLE ccsl_java (
    id NUMBER(6) NOT NULL,
    name VARCHAR2(30),
    salary NUMBER(9,2),
    adress VARCHAR2(40),
   hre_date date,
CONSTRAINT const_java_in PRIMARY key(id)
);

INSERT INTO ccsl_java (id, name, salary, adress, hre_date)
VALUES (1281148, 'sanaullah', 15000, 'dhaka', TO_DATE('12-Jan-2025', 'DD-Mon-YYYY'));


---2---
ALTER TABLE jee59
ADD (DEPARTMENT_ID NUMBER(6),
     DEPARTMENT_NAME VARCHAR2(50));


---3--
 INSERT INTO jee59(DEPARTMENT_ID,DEPARTMENT_NAME)
  VALUES(1245,'T_PROG'); 

---4--
  create view  view_jee59 as
SELECT EMPLOYEE_ID,DEPARTMENT_NAME,salary
from jee59;

--5--
REATE SEQUENCE jee59
START WITH 100
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

---6---
insert into jee59
SELECT JOB_ID, EMPLOYEE_ID
FROM jee59
WHERE JOB_ID = (SELECT JOB_ID FROM EMPLOYEES WHEREJOB_ID='IT_PROG' );