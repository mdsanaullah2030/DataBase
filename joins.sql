SELECT l.city,d.department_name
from locations l JOIN departments d
using (location_id)
where location_id=1400;

select first_name,e.department_name,d.manager_id
from employees e JOIN departments d using(department_id)
where department_id=50;

select l.city,d.DEPARTMENT_name
from locations l join DEPARTMENTS d
using (location_id)
where location_id=1400;