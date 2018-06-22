
--1.	Group functions work across many rows to produce one result per group.
--True

--2.	Group functions include nulls in calculations. 
--False

--3.	The WHERE clause restricts rows before inclusion in a group calculation.
--True

--4

SELECT MAX(marks) "Highest"
       , MIN(marks) "Lowest"
       , AVG(marks) "Average"
FROM	ad_exam_results;

--5

SELECT exam_id, MAX(marks) "Highest",
MIN(marks) "Lowest", AVG(marks) "Average"
FROM	ad_exam_results 
GROUP BY exam_id
ORDER BY exam_id;

--6

SELECT course_id, COUNT(*)
FROM	ad_student_course_details 
GROUP BY course_id
ORDER BY course_id;

--7

SELECT exam_id, course_id, AVG(marks) 
FROM	ad_exam_results
GROUP BY exam_id, course_id
HAVING AVG(marks) > 85;

--8

SELECT	MAX(salary) - MIN(salary) DIFFERENCE 
FROM	ad_faculty_details;

--9

SELECT	MAX(AVG(marks))
FROM	ad_exam_results
GROUP BY course_id;


--10

SELECT	course_id, MIN(marks) 
FROM	ad_exam_results
WHERE	course_id in (190,191,192) 
GROUP BY	course_id
HAVING	min(marks)>75
ORDER BY	min(marks);






