

Select employee_id
      ,salary*1.1 AS "salary encrease"
      ,salary*1.1 AS salary_encrease
      ,salary*10 annual_salary 
      ,first_name 
      ,last_name 
From employees

--
--/**/

Select first_name||' '|| last_name AS full_name
      ,email
      ,phone_number
From employees 

---- Care caractere speciale se utilizeaza cu  "Quote" ?
Select manager_id ||' '||'Manager_id'||'12220' AS test_1
      ,manager_id ||' '||'Manager_id'||'is ok' AS test_2
      ,manager_id || ' '||'That''s not ok ' AS test_3
      ,first_name || ' '|| q'[What's a quote among friends?]' AS test_4
      ,first_name || last_name || '@gmail.com' AS test_5
      ,'@gmail.com'|| first_name AS test_6
From employees 



Select last_name||' '||q'[orice ' text]' as doua_optiuni
      ,last_name||q'[ orice ' text]' AS doua_optiuni_
From employees 


Select distinct *--distinct faculty_id
      --distinct course_id
From ad_faculty_course_details

desc employees
describe employees

Select distinct *
From employees

Select *
From employees
Where department_id=90

--"" apostrofe dubla
--'' apostrofe simple

Select *
From employees
--Where first_name='Steven'
Where hire_date = '17-OCT-11'  

DD.MM.YYYY
YY.MON.DD


Select 'hdsaklxz'||'dsjkx,'
from dual

describe dual


-- <> / !=  diferit 


Select * 
from employees
where not employee_id=100


Select * 
from employees
where last_name='Neena'
--where last_name='NEENA';


Select * 
from employees
--Where salary between 1000 and 5000
--Where salary >= 1000 and salary <=5000;
Where hire_date between '17-SEP-11' and '17-FEB-12'



