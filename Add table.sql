


CREATE TABLE student_registation(
id number(4)not null,
name varchar2(30),
salary  number(8,2),
COMMISSION_PCT number(2,2),
CONSTRAINT student_registation_reps_id PRIMARY key(id)
);

INSERT into student_registation(id,name,salary,COMMISSION_PCT)
select EMPLOYEE_ID,LAST_NAME,SALARY,COMMISSION_PCT
from EMPLOYEES 
where job_id like'%REP%';
COMMIT;