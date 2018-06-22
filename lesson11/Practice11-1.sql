  
--1

SELECT department_name, course_name 
FROM	ad_department
NATURAL JOIN	ad_course_details;

--2
SELECT department_name, course_name, hod 
FROM	ad_department
JOIN	ad_course_details
USING (department_id);

--3

SELECT c.course_name, s.session_name
FROM	ad_course_details c JOIN ad_academic_session s 
ON	(c.session_id = s.session_id)
WHERE s.session_id = 300;

--4

SELECT a.course_id, b.course_name, c.faculty_name
FROM	ad_faculty_course_details a JOIN ad_course_details b 
ON	(a.course_id = b.course_id)
JOIN	ad_faculty_details c
USING	(faculty_id);

--5

SELECT f.faculty_name "Faculty", f.faculty_id "FACULTY#", 
m.faculty_name "Mentor", m.faculty_id	"MENTOR#"
FROM	ad_faculty_details f JOIN ad_faculty_details m
ON	(f.mentor_id = m.faculty_id);

--6

SELECT a.student_id, a.first_name, b.exam_id, b.marks 
FROM	ad_student_details a JOIN ad_exam_results b
ON	(a.student_id = b.student_id)
AND	(b.marks BETWEEN 60 AND 70);

--7

SELECT department_name, course_name 
FROM	ad_department
LEFT OUTER JOIN	ad_course_details
USING (department_id);


