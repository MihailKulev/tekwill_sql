

--1

SELECT course_id
FROM	ad_course_details
MINUS
SELECT course_id
FROM ad_student_course_details;


--2

SELECT course_id,course_name 
FROM	ad_course_details 
MINUS
SELECT x.course_id,y.course_name 
FROM	ad_student_course_details x 
JOIN	ad_course_details y
ON	x.course_id = y.course_id;

--3

SELECT z.student_id, z.first_name, x.course_id, x.course_name 
FROM ad_course_details x
JOIN ad_student_course_details y 
ON y.course_id = x.course_id 
JOIN ad_student_details z
ON y.student_id = z.student_id WHERE y.course_id=190
UNION
SELECT z.student_id, z.first_name, x.course_id, x.course_name 
FROM ad_course_details x
JOIN ad_student_course_details y 
ON y.course_id = x.course_id 
JOIN ad_student_details z
ON y.student_id = z.student_id
WHERE y.course_id=193;

--4

SELECT course_id, course_name 
FROM ad_course_details
WHERE session_id =100
INTERSECT
SELECT course_id, course_name 
FROM ad_course_details
WHERE department_id=10;

--5

SELECT course_name, department_id, to_char(null) dept_name 
FROM ad_course_details
UNION ALL
SELECT to_char(null),department_id,department_name 
FROM ad_department;





