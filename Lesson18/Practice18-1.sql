
--1
CREATE OR REPLACE VIEW faculty_vu AS
SELECT faculty_id
, faculty_name faculty
, mentor_id
FROM ad_faculty_details;

--2
SELECT	*
FROM	faculty_vu;

--3
SELECT	faculty
, mentor_id
FROM	faculty_vu;

--4
CREATE VIEW dept10 AS
SELECT	course_id courseno
, course_name course
, session_id sessionno
, department_id deptno
FROM	ad_course_details 
WHERE	department_id = 10
WITH CHECK OPTION CONSTRAINT course_dept_10;

--5
DESCRIBE dept10

SELECT	*
FROM	dept10;

--6
UPDATE	dept10
SET	deptno = 20
WHERE	course = 'COST ACCOUNTING';

--7
CREATE OR REPLACE VIEW course_det_vu
(CourseID, CourseName, SessionID, DepartmentName,HeadOfDepartment) AS 
SELECT	c.course_id
, c.course_name,
c.session_id
,d.department_name
, d.hod 
FROM	ad_course_details c JOIN ad_department d
USING	(department_id);

--8
DESCRIBE course_det_vu
select * from course_det_vu;

--9
CREATE OR REPLACE VIEW faculty_vu AS
SELECT faculty_id
, faculty_name faculty
, mentor_id 
FROM ad_faculty_details
WITH READ ONLY;

--10
DELETE FROM faculty_vu
WHERE	faculty_id = 800;

--11
SELECT	view_name, text
FROM	user_views;

--12
DROP VIEW faculty_vu; DROP VIEW dept10;
DROP VIEW course_det_vu;




