
--1

CREATE TABLE my_faculty
(faculty_id NUMBER(4) CONSTRAINT my_faculty_id_pk PRIMARY KEY
, faculty_name VARCHAR2(50)
,salary NUMBER(9,2));

--2
DESCRIBE my_faculty;

--3

INSERT INTO my_faculty
VALUES (850, 'Ralph Patel', 8950);


--4

INSERT INTO my_faculty (faculty_id, faculty_name, salary)
VALUES (860, 'Betty Dancs', 8600);

--5

SELECT	*
FROM	my_faculty;

--6

INSERT INTO my_faculty
VALUES (&f_id, '&f_name', &f_salary);

--7
SELECT	*
FROM my_faculty;

--8
COMMIT;

--9

UPDATE	my_faculty
SET	faculty_name = 'Ben Drexler'
WHERE	faculty_id = 870;

--10

UPDATE	my_faculty
SET	salary = 10000
WHERE	salary < 9000;

--11
SELECT	*
FROM	my_faculty;

--12

DELETE
FROM	my_faculty
WHERE faculty_name = 'Betty Dancs';


--13

SELECT	*
FROM	my_faculty;

--14

COMMIT;

--15

INSERT INTO my_faculty
VALUES (&f_id, '&f_name', &f_salary);


--16

SELECT	*
FROM	my_faculty;

--17
SAVEPOINT step_16;

--18

DELETE
FROM	my_faculty;

--19

SELECT *
FROM	my_faculty;


--20

ROLLBACK TO step_16;

--21

SELECT *
FROM	my_faculty;


--22

COMMIT;







