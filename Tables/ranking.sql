CREATE TABLE RANKING(
COLLEGE_ID VARCHAR2(10) CONSTRAINT FK_RANKING REFERENCES COLLEGE ON DELETE CASCADE,
QS NUMBER(6) CONSTRAINT VALID_QS_RANK CHECK(QS>0),
TIMES NUMBER(6) CONSTRAINT VALID_TIMES_RANK CHECK(TIMES>0), 
ARWU NUMBER(6) CONSTRAINT VALID_ARWU_RANK CHECK(ARWU>0), 
CWTS NUMBER(6) CONSTRAINT VALID_CWTS_RANK CHECK(CWTS>0), 
NIRF NUMBER(6) CONSTRAINT VALID_NIRF_RANK CHECK(NIRF>0));
