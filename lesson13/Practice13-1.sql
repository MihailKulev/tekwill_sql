
--1

--Execute the UNDEFINE command to remove a variable

UNDEFINE Enter_name

-- Execute the below SELECT statements to retrieve the values from AD_COURSE_DETAILS table

SELECT course_name, session_id 
FROM	ad_course_details
WHERE	department_id = (SELECT department_id
                         FROM	ad_COURSE_details
                         WHERE	course_name = '&&Enter_name') 
        AND	course_name <> '&Enter_name';

--2

SELECT faculty_id, faculty_name, salary 
FROM	ad_faculty_details
WHERE	salary > (SELECT AVG(salary)
                  FROM	ad_faculty_details)
ORDER BY salary;

--3

SELECT course_id, exam_id, student_id, marks 
FROM	ad_exam_results
WHERE	course_id IN (SELECT course_id
                      FROM	AD_course_details
                      WHERE	course_name like '%OGY');

--4

--Execute the UNDEFINE command to remove a variable

UNDEFINE id

-- Execute the below SELECT statements to retrieve the values from AD_STUDENT_DETAILS table
SELECT first_name, student_reg_year 
FROM	ad_student_details
WHERE	student_id in ( SELECT student_id
                        FROM	ad_student_course_details
                        WHERE	course_id = &&id);

--5

SELECT faculty_name, salary 
FROM	ad_faculty_details
WHERE	mentor_id = (SELECT faculty_id
                     FROM	ad_faculty_details
                     WHERE	faculty_name = 'JILL MILLER');

--6

SELECT student_id, marks 
FROM	ad_exam_results
WHERE	exam_id IN (SELECT exam_id
                    FROM	ad_exam_details 
                    WHERE	exam_type = 'MCE')
AND	marks > (SELECT AVG(marks)
                 FROM	ad_exam_results);









