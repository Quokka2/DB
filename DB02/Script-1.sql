
CREATE TABLE PRODUCT (
	id varchar2(200), 
	name varchar2(200), 
	content varchar2(200), 
	price varchar2(200), 
	company varchar2(200), 
	img varchar2(200)
)

SELECT * FROM HR.PRODUCT ORDER BY ID -- 오름차순

SELECT * FROM HR.PRODUCT ORDER BY ID DESC -- 내림차순

SELECT * FROM HR.PRODUCT ORDER BY COMPANY

SELECT NAME, CONTENT, PRICE FROM HR.PRODUCT ORDER BY COMPANY

SELECT NAME, PRICE FROM HR.PRODUCT WHERE id = '100'

SELECT NAME, COMPANY FROM HR.PRODUCT WHERE PRICE = '5000'

SELECT * FROM HR.PRODUCT WHERE id = '100' AND PRICE = '1000'

SELECT NAME, COMPANY FROM HR.PRODUCT WHERE COMPANY = 'c100'

SELECT NAME, PRICE FROM HR.PRODUCT WHERE COMPANY = 'c100' OR  COMPANY = 'c200'


-- 스키마 이름이 system일 경우는 위에 간편도구창에 있는 SQL생성창 사용하면 그럼 그러니까 원하는 스키마에
-- 직접적으로 생성해줘야 일치한다.