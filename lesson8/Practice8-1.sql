

--1

SELECT	faculty_name || ' earns '
|| TO_CHAR(salary, 'fm$99,999.00')
|| ' monthly but wants '
|| TO_CHAR(salary * 3, 'fm$99,999.00')
|| '.' "Dream Salary" 
FROM	ad_faculty_details;

--2

SELECT first_name, student_reg_year, 
TO_CHAR(NEXT_DAY(ADD_MONTHS(student_reg_year,
6),'MONDAY'),
'fmDay, "the" Ddspth "of" Month, YYYY') REVIEW 
FROM	ad_student_details;

--3

SELECT first_name,
NVL(TO_CHAR(email_addr), 'No Email Address') CONTACT_INFO 
FROM	ad_student_details;

--4

SELECT student_id, marks, TO_CHAR(marks, '$99') PRIZE_AMOUNT 
FROM ad_exam_results
WHERE marks >= 90;

