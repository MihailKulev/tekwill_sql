
--1

SELECT	sysdate "Date"
FROM	dual;

--2-3

SELECT	student_id, course_id, marks, 
ROUND(marks * 1.155, 0) "New Score"
FROM	ad_exam_results;

--4

SELECT	student_id, course_id, marks, 
ROUND(marks * 1.155, 0) "New Score",
ROUND(marks * 1.155, 0) - marks "Increase"
FROM	ad_exam_results;

--5a

SELECT	INITCAP(first_name) "Name", 
LENGTH(first_name) "Length"
FROM	ad_student_details 
WHERE	first_name LIKE 'J%' 
OR	first_name LIKE 'R%'
OR	first_name LIKE 'M%'
ORDER BY first_name;

--5b

SELECT	INITCAP(first_name) "Name", 
LENGTH(first_name) "Length"
FROM	ad_student_details
WHERE	first_name LIKE '&start_letter%'
ORDER BY first_name;

--5c

SELECT	INITCAP(first_name) "Name", 
LENGTH(first_name) "Length"
FROM	ad_student_details
WHERE	first_name LIKE UPPER('&start_letter%' )
ORDER BY first_name;

--6

SELECT first_name, ROUND(MONTHS_BETWEEN(
SYSDATE, student_reg_year)) MONTHS_COMPLETED 
FROM	ad_student_details
ORDER BY months_completed;

--7

SELECT exam_name,
LPAD(exam_type, 15, '*') EXAM_CODE 
FROM	ad_exam_type;

--8

SELECT student_id,
rpad(' ', marks/10, '*')
STUDENTS_AND_THEIR_MARKS
FROM	ad_exam_results ORDER BY marks DESC;

--9

SELECT first_name, trunc((SYSDATE-student_reg_year)/7) AS WEEKS_COMPLETED
FROM	ad_student_details 
WHERE	email_addr is NULL
ORDER BY WEEKS_COMPLETED DESC;











