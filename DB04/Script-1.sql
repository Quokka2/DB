SELECT LENGTH(ENAME) FROM EMP

SELECT LENGTH(ENAME)
FROM EMP
WHERE JOB ='MANAGER'

SELECT ENAME, JOB FROM EMP WHERE COMM IS NULL

SELECT HIREDATE  FROM EMP WHERE COMM IS NOT NULL

SELECT SUBSTR(ENAME, 2) FROM EMP

SELECT SUBSTR(ENAME, 1, 3) FROM EMP

SELECT REPLACE(ENAME, 'K', 'P') FROM EMP

SELECT COUNT(*)
FROM EMP

SELECT COUNT(*)
FROM EMP 
GROUP BY DEPTNO, MGR 
HAVING DEPTNO = 20 AND MGR <= 7700

SELECT MIN(SAL)
FROM EMP 
GROUP BY DEPTNO 
HAVING DEPTNO = 10 OR DEPTNO = 20

SELECT MIN(SAL), MAX(SAL), SUM(SAL)
FROM EMP

SELECT AVG(SAL)
FROM EMP
GROUP BY DEPTNO

SELECT SUM(SAL)
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO DESC

SELECT AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO DESC

SELECT COUNT(*), AVG(SAL) 
FROM EMP
GROUP BY JOB
HAVING JOB = 'MANAGER'

SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%S%'
GROUP BY ENAME 
HAVING LENGTH(ENAME) > 3

SELECT COUNT(*) 
FROM EMP 
WHERE SAL >= 3000 AND COMM IS NOT NULL 
ORDER BY SAL DESC








----------------------------------
-- 조인조인조인조인!!!!!

SELECT *
FROM MEMBER M, BBS3 B
WHERE M.ID = B.WRITER

SELECT NO, TITLE, NAME 
FROM MEMBER M, BBS3 B
WHERE M.ID = B.WRITER

SELECT *
FROM MEMBER M
LEFT OUTER JOIN BBS3 B
ON(M.ID = B.WRITER)

SELECT *
FROM MEMBER M
RIGHT OUTER JOIN BBS3 B
ON(M.ID = B.WRITER)

SELECT EMPNO, ENAME, JOB, D.DEPTNO, LOC
FROM DEPT D, EMP E
WHERE D.DEPTNO = E.DEPTNO

SELECT M.ID, M.NAME, B.TITLE, B.CONTENT
FROM "MEMBER" M
LEFT OUTER JOIN BBS3 B
ON(M.ID = B.WRITER)

SELECT * FROM BBS3 B
RIGHT OUTER JOIN "MEMBER" M
ON(M.ID = B.WRITER)



CREATE TABLE COMPANY(
	ID VARCHAR2(200) PRIMARY KEY,
	NAME VARCHAR2(200),
	ADDR VARCHAR2(200),
	TEL VARCHAR2(200)
)

INSERT INTO COMPANY VALUES ('c100', 'good', 'seoul', '011')

INSERT INTO COMPANY VALUES ('c200', 'joa', 'busan', '012')

INSERT INTO COMPANY VALUES ('c300', 'maria', 'ulsan', '013')

INSERT INTO COMPANY VALUES ('c400', 'my', 'kwangju', '014')

SELECT * FROM COMPANY




----------------------------------
-- 문제 --

SELECT *
FROM PRODUCT3 P, COMPANY C
WHERE P.COMPANY  = C.ID




