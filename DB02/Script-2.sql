--price로 내림차순 정렬하여 전체컬럼 검색
--company로 오름차순 정렬하여 제품의 이름, 내용, 가격 검색
--id가 100인 제품의 이름과 가격 검색
--price가 5000인 제품명과 회사명
--id가 100이고 가격이 1000인 제품명과 이미지 검색
--회사명이 c100인 회사명과 제품명
--회사명이 c100, c200인 제품명과 가격
--price가 5000원인 제품의 content를 품절로 수정
--id가 100, 102번 제품의 img를 o.png로, price를 10000으로 수정
--id가 101번 제품의 company를 apple, name은 appleshoes로 수정
--name이 shoes1이거나 id가 107인 제품 삭제
--회사명이 c100인 경우 모든 정보 삭제
--테이블의 모든 정보 삭제

SELECT * FROM PRODUCT ORDER BY price DESC

SELECT name, content, price FROM PRODUCT ORDER BY company

SELECT name, price FROM PRODUCT WHERE id = '100'

SELECT name, COMPANY FROM PRODUCT WHERE price = '5000'

SELECT COMPANY, IMG  FROM PRODUCT WHERE id = '100' AND price = '1000'

SELECT COMPANY, name  FROM PRODUCT WHERE COMPANY = 'c100'

SELECT * FROM PRODUCT 

SELECT NAME, PRICE FROM PRODUCT WHERE COMPANY = 'c100' OR COMPANY = 'c200'

UPDATE PRODUCT SET CONTENT = '품절' WHERE PRICE = '5000'

SELECT * FROM PRODUCT WHERE PRICE = '5000'

UPDATE PRODUCT SET IMG = '0.png', PRICE = '10000' WHERE id = '100' OR id = '102'

SELECT * FROM PRODUCT  WHERE id = '100' OR id = '102'

UPDATE PRODUCT SET COMPANY = 'apple', NAME = 'appleshoes'WHERE id = '101'

SELECT * FROM PRODUCT  WHERE id = '101'

DELETE FROM PRODUCT WHERE NAME = 'shoes1' OR id = '107'

SELECT * FROM PRODUCT WHERE NAME = 'shoes1' OR id = '107'

DELETE FROM PRODUCT WHERE COMPANY = 'c100'

SELECT * FROM PRODUCT 

DELETE FROM PRODUCT 

SELECT * FROM PRODUCT 

DROP TABLE PRODUCT

SELECT * FROM PRODUCT
