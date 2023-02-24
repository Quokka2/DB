

CREATE TABLE "HR"."MEMBER" 
   (	"ID" VARCHAR2(100), 
	"PW" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"TEL" VARCHAR2(100)
   )
   
INSERT INTO MEMBER VALUES ('100','100','park','011')

INSERT INTO MEMBER VALUES ('200','200','park','011')

INSERT INTO MEMBER VALUES ('300','300','park','011')

SELECT * FROM MEMBER

SELECT * FROM MEMBER WHERE id = '100' --id가 100인 모든 컬럼


SELECT id FROM MEMBER WHERE id = '100' --id가 100인 id 컬럼

SELECT id, name FROM MEMBER WHERE id = '100' --id가 100인 id,name 컬럼

SELECT name, id FROM MEMBER WHERE id = '100' --id가 100인 id,name 컬럼

SELECT id as 아이디, name FROM MEMBER WHERE id = '100' --id가 100인 id,name 컬럼

SELECT tel FROM MEMBER WHERE name = 'park'

UPDATE MEMBER SET name = 'kim' WHERE id = '100'

UPDATE MEMBER SET name = 'yang' WHERE id = '200'

UPDATE MEMBER SET name = 'lee' WHERE id = '300'
   
SELECT * FROM MEMBER

UPDATE MEMBER SET pw = '8888', tel = '9999' WHERE id = 'ice'

DELETE FROM "MEMBER" WHERE ID = '100'

DELETE FROM "MEMBER" WHERE TEL = '011'

SELECT  * FROM "MEMBER" WHERE  ID = '200' AND TEL = '011'

SELECT  * FROM "MEMBER" WHERE  ID = '200' OR  TEL = '011'