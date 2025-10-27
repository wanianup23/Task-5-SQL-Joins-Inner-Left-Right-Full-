---JOINS----
---INNER JOIN---

 SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,DEPARTMENT_NAME
 FROM EMPLOYEES NATURAL JOIN DEPARTMENTS;---RETURNS ONLY MATCHING ROWS FROM BOTH TABLE
 
 
 SELECT * FROM DEPARTMENTS;
 SELECT*FROM LOCATIONS;
 SELECT*FROM EMPLOYEES;
 
 SELECT DEPARTMENT_NAME,FIRST_NAME,DEPARTMENT_ID,DEPARTMENTS.MANAGER_ID
 FROM EMPLOYEES JOIN DEPARTMENTS
 USING(DEPARTMENT_ID);
 
 SELECT LOCATION_ID,DEPARTMENT_NAME,CITY,MANAGER_ID
 FROM DEPARTMENTS JOIN LOCATIONS USING(LOCATION_ID);
 
 ---ON CLAUSE---
 --COLUMN NAME ARE DIFFERENT , MULTIPLE JOIN CONDITIONS--
 SELECT L.LOCATION_ID,D.DEPARTMENT_NAME,L.CITY,D.MANAGER_ID
 FROM DEPARTMENTS D JOIN LOCATIONS L
 ON D.LOCATION_ID=L.LOCATION_ID;
 
 SELECT E.FIRST_NAME,D.DEPARTMENT_NAME,L.CITY,D.DEPARTMENT_ID
 FROM EMPLOYEES E JOIN DEPARTMENTS D
 ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
 JOIN LOCATIONS L
 ON L.LOCATION_ID=D.LOCATION_ID;---MULTIPLE TABLE JOIN CONDITIONS
 
 --SELF JOIN---
 select e.first_name as ename,m.first_name as mname,e.employee_id
from employees e join employees m
on (e.employee_id=m.manager_id);

commit;

select E. first_name, D.department_name,L.city
from employees E full outer join Departments D
on (e.department_id=D.department_id)
full outer join locations L
on( L.location_id=D.location_id);

select J.Job_id,J.Job_title,E.first_name
from jobs J left outer join employees E
on (J.Job_id=E.job_id);

select J.Job_id,J.Job_title,E.first_name
from jobs J right outer join employees E
on (J.Job_id=E.job_id);



 
 