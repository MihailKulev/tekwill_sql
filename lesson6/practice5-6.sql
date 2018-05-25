--Practice 5-1
--test1
SELECT student_id, first_name, student_reg_year AS Admission 
FROM	ad_student_details;
--test2
SELECT *
FROM	ad_course_details;

--test3
select STUDENT_ID,FIRST_NAME,
student_reg_year + 2 course_expiry
from ad_student_details;
--test4
DESCRIBE AD_COURSE_DETAILS;

SELECT *
FROM	AD_COURSE_DETAILS;
--test5
DESCRIBE AD_STUDENT_DETAILS;

SELECT student_id, first_name
, parent_id
, student_reg_year REGISTRATION
FROM AD_STUDENT_DETAILS;
--test6
SELECT *--DISTINCT NAME 
FROM AD_EXAM_DETAILS;

SELECT DISTINCT NAME 
FROM AD_EXAM_DETAILS;
--test7
SELECT student_id "Student #", first_name "Student",
parent_id "Parent Information", student_reg_year "Registered On"
FROM	AD_STUDENT_DETAILS;
--test8
SELECT course_id||', '||course_name "Course ID and Title"
FROM	ad_course_details;
--test9
SELECT exam_id || ',' || exam_type || ',' || start_date
|| ',' || name THE_OUTPUT
FROM	ad_exam_details;
--Practice 6-1
--test1
SELECT	*--student_id, no_of_days_off 
FROM	ad_student_attendance
--WHERE	no_of_days_off > 15;

SELECT	student_id, no_of_days_off 
FROM	ad_student_attendance
WHERE	no_of_days_off > 15;

--test2
SELECT	course_name, department_id 
FROM	ad_course_details
WHERE	course_id = 199;
--test3
SELECT	student_id, marks 
FROM	ad_exam_results
WHERE	marks NOT BETWEEN 65 AND 90;

--test4
SELECT	student_id, first_name, student_reg_year 
FROM	ad_student_details
WHERE	first_name IN ('ROBERT', 'NINA')
ORDER BY student_reg_year;
--test5
SELECT	course_name, department_id 
FROM	ad_course_details
WHERE	department_id IN (20, 40)
ORDER BY course_name ASC;
--test6
select student_id "Student #"
,marks "Semester Marks"
from ad_exam_results
where marks BETWEEN 65 and 90
and COURSE_ID in (199, 189)
--test7
SELECT	first_name, student_reg_year 
FROM	ad_student_details
WHERE	student_reg_year >= '01-JAN-14'
AND student_reg_year < '01-JAN-15'
--test8
SELECT	first_name, parent_id 
FROM	ad_student_details
WHERE	email_addr IS NULL;
--test9
SELECT	first_name, student_reg_year, email_addr 
FROM	ad_student_details
WHERE	email_addr IS NOT NULL
ORDER BY 2 DESC, 3 DESC;




--test12
SELECT	first_name
FROM	ad_student_details
WHERE	first_name LIKE '_O%';
--test13
SELECT	first_name
FROM	ad_student_details 
WHERE	first_name LIKE '%A%'
AND	first_name LIKE '%N%';
--test14
SELECT	course_id, course_name 
FROM	ad_course_details
WHERE	department_id IN (10, 40)
AND	session_id NOT IN (200, 300);
--test15
SELECT	student_id "Student #", exam_id "Exam Code", course_id
"Course Code", marks "Score"
FROM	ad_exam_results
WHERE	marks = 70;



























