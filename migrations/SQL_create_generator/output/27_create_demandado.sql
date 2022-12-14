-- UP
CREATE TABLE DEMANDADO
(
  ID NUMBER(10) NOT NULL,
  DNI VARCHAR(8) NOT NULL,
  NOMBRES VARCHAR(45) NOT NULL,
  APELLIDOS VARCHAR(45) NOT NULL,
  DIRECCION VARCHAR(100) NOT NULL,
  EXPEDIENTE_ID NUMBER(10) NOT NULL,
  SEXO_ID NUMBER(10) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (EXPEDIENTE_ID) REFERENCES EXPEDIENTE(ID),
  FOREIGN KEY (SEXO_ID) REFERENCES SEXO(ID)
);

CREATE SEQUENCE DEMANDADO_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER DEMANDADO_PK 
BEFORE INSERT ON DEMANDADO 
FOR EACH ROW

BEGIN
SELECT DEMANDADO_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

