select h.JOB_ID,h.first_name
from EMPLOYEES e join JOB_HISTORY h
on e.JOB_ID=h.JOB_ID;

