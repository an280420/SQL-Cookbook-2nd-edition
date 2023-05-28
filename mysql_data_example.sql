CREATE TABLE EMP (
    EMPNO INTEGER NOT NULL,
    ENAME VARCHAR(10),
    JOB VARCHAR(9),
    MGR INTEGER,
    HIREDATE DATE,
    SAL INTEGER,
    COMM INTEGER,
    DEPTNO INTEGER
);

INSERT INTO EMP VALUES
    (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
    (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
    (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30),
    (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20),
    (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
    (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30),
    (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10),
    (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20),
    (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
    (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30),
    (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20),
    (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30),
    (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20),
    (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);

CREATE TABLE DEPT (
    DEPTNO INTEGER,
    DNAME VARCHAR(14),
    LOC VARCHAR(13)
);

INSERT INTO DEPT VALUES
    (10, 'ACCOUNTING', 'NEW YORK'),
    (20, 'RESEARCH', 'DALLAS'),
    (30, 'SALES', 'CHICAGO'),
    (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE T1 (ID INTEGER);
INSERT INTO T1 VALUES (1);

CREATE TABLE T10 (ID INTEGER);
INSERT INTO T10 VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

CREATE TABLE T100 (ID INTEGER);
CREATE TABLE T500 (ID INTEGER);

DELIMITER //

CREATE PROCEDURE InsertData()
BEGIN
    DECLARE counter INT DEFAULT 1;

    -- Insert into T100
    SET counter = 1;
    WHILE (counter <= 100) DO
        INSERT INTO T100 (ID) VALUES (counter);
        SET counter = counter + 1;
    END WHILE;

    -- Insert into T500
    SET counter = 1;
    WHILE (counter <= 500) DO
        INSERT INTO T500 (ID) VALUES (counter);
        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

CALL InsertData();
