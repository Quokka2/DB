CREATE TABLE PRODUCT3
(	"ID" VARCHAR2(200),
	"NAME" VARCHAR2(200),
	"CONTENT" VARCHAR2(200),
	"PRICE" NUMBER(38,0),
	"COMPANY" VARCHAR2(200),
	"IMG" VARCHAR2(200)
)

-- 2.
SELECT * FROM PRODUCT3
ORDER BY PRICE DESC

-- 3.
SELECT NAME, CONTENT, PRICE, COMPANY FROM PRODUCT3
ORDER BY COMPANY

-- 4.
SELECT DISTINCT COMPANY FROM PRODUCT3

-- 5.
SELECT NAME, PRICE*5 AS PRICE5 FROM PRODUCT3

-- 6.
SELECT NAME, COMPANY FROM PRODUCT3
WHERE PRICE = 5000

-- 7.
SELECT PRICE, COMPANY FROM PRODUCT3 
WHERE PRICE BETWEEN 3000 AND 6000

-- 8.
SELECT NAME, COMPANY FROM PRODUCT3
WHERE NOT COMPANY = 'c100'

-- 9.
SELECT NAME, PRICE, COMPANY FROM PRODUCT3
WHERE COMPANY = 'c100' OR COMPANY = 'c200'

-- 10.
SELECT * FROM PRODUCT3 WHERE NAME LIKE '%4'

-- 11.
SELECT * FROM PRODUCT3 WHERE NAME LIKE '%food%'

-- 12.
UPDATE PRODUCT3 SET CONTENT = '품절'
WHERE PRICE = 5000

SELECT * FROM PRODUCT3

-- 13.
UPDATE PRODUCT3 SET IMG = '0.png', PRICE = 10000
WHERE ID = '100' OR ID = '102'

SELECT * FROM PRODUCT3

-- 14. delete는 컬럼명을 지정하지 않음.
--> insert, delete, update의 결과는 실행된 Row수!(정수)
--> select의 결과는 테이블이다.! 

DELETE FROM PRODUCT3
WHERE COMPANY = 'c100'

SELECT * 
FROM PRODUCT3
WHERE COMPANY = 'c100'

-- 15. DELETE 
--> varchar2, char의 차이 
--> varchar2(100) : var(변하다, variable) + char(문자)
-->           2글자이면 2글자들어갈 만큼만 저장공간을 사용
-->           100글자이면 100글자들어갈 만큼 저장공간을 저장 
--> char(100) : 저장공간이 고정, 주민번호, 전화번호, 우편번호, 사번 

DELETE FROM PRODUCT3 -- row수 
--> 저장공간은 남겨두고, 데이터만 지움.
--> 데이터를 복구/취소(rollback, 롤백) 가능 
--> truncate로 지우면 저장공간도 남겨두지 않고, 복구/취소 불가능 

SELECT * FROM PRODUCT3