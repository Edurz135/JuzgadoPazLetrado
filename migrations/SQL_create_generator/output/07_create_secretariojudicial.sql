-- UP
CREATE TABLE SECRETARIOJUDICIAL
(
  ID NUMBER(10) NOT NULL,
  DNI VARCHAR(8) NOT NULL,
  NOMBRES VARCHAR(45) NOT NULL,
  APELLIDOS VARCHAR(45) NOT NULL,
  NRO_COLEGIATURA NUMBER(10) NOT NULL,
  SEXO_ID NUMBER(10) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (SEXO_ID) REFERENCES SEXO(ID)
);

CREATE SEQUENCE SECRETARIOJUDICIAL_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER SECRETARIOJUDICIAL_PK 
BEFORE INSERT ON SECRETARIOJUDICIAL 
FOR EACH ROW

BEGIN
SELECT SECRETARIOJUDICIAL_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/
