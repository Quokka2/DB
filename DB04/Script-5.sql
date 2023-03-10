CREATE TABLE "HR"."DEPART2" 
   (	
   	"ID" VARCHAR2(10) PRIMARY KEY,
	"NAME" VARCHAR2(10),
	"INSTRUCTOR" VARCHAR2(10)
   )
   
   CREATE TABLE "HR"."STUDENT2"
   (	
   	"ID" VARCHAR2(10),
	"NAME" VARCHAR2(10), 
	"TEL" VARCHAR2(10),
	"DEPART_ID" VARCHAR2(10)
   )
   
ALTER TABLE HR.STUDENT2
ADD CONSTRAINT STUDENT2_PK
PRIMARY KEY ("ID")

ALTER TABLE HR.STUDENT2
ADD CONSTRAINT FK_STUDENT2
FOREIGN KEY (DEPART_ID)
--연결하다의 명령어 REFERENCES
REFERENCES HR."DEPART2"(ID);