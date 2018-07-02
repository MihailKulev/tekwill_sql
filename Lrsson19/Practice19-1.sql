
--1
CREATE TABLE parent
(id	NUMBER(7) CONSTRAINT parent_id_pk PRIMARY KEY,
name VARCHAR2(25));

DESCRIBE parent;

--2
CREATE SEQUENCE parent_id_seq 
START WITH 100
INCREMENT BY 10
MAXVALUE 1000;

--3
INSERT INTO parent
VALUES (parent_id_seq.nextval, 'John Fleming'); INSERT INTO parent
VALUES (parent_id_seq.nextval, 'Mark Smith');

--View the inserted records to check the sequence values 
SELECT * from parent;

--4
SELECT	sequence_name
, max_value
, increment_by
, last_number
FROM user_sequences;

--5
CREATE SYNONYM student FOR ad_student_details;
SELECT * FROM student;

--6
SELECT * FROM	user_synonyms;

--7
DROP SYNONYM student;

--8
CREATE INDEX parent_name_idx ON parent(name);

--9
CREATE TABLE course_dept 
(COURSE_id NUMBER(3) 
PRIMARY KEY USING INDEX
(CREATE INDEX COURSE_pk_idx ON
course_dept(course_id))
, course_department VARCHAR2(30));

SELECT INDEX_NAME
, TABLE_NAME
, UNIQUENESS 
FROM USER_INDEXES
WHERE TABLE_NAME = 'COURSE_DEPT';

--10
DROP TABLE parent;
DROP TABLE course_dept;
DROP SEQUENCE parent_id_seq;


