
--1

ALTER TABLE courses
ADD annual_fees NUMBER(9,2);

DESCRIBE courses;

--2
ALTER TABLE dept
MODIFY (department_name VARCHAR2(100));

DESCRIBE dept;

--3
ALTER TABLE courses
DROP COLUMN start_date;
DESCRIBE courses;

--4
CREATE TABLE course_detail(id, name) AS 
SELECT	course_id, course_name
FROM	ad_course_details where department_id=20;
DESCRIBE course_detail;

--5
SELECT * FROM COURSE_DETAIL;

--6
ALTER TABLE COURSE_DETAIL READ ONLY;

--7
ALTER TABLE course_detail
ADD session_id NUMBER(4);


--8
ALTER TABLE course_detail READ WRITE;

ALTER TABLE course_detail 
ADD session_id NUMBER(4);

DESCRIBE course_detail;

--9
DROP TABLE courses; 
DROP TABLE dept;
DROP TABLE course_detail;


