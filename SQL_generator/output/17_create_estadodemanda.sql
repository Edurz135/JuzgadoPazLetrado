-- UP
CREATE TABLE ESTADODEMANDA
(
  ID INT NOT NULL,
  NOMBRE VARCHAR(30) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE SEQUENCE ESTADODEMANDA_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER ESTADODEMANDA_PK 
BEFORE INSERT ON ESTADODEMANDA 
FOR EACH ROW

BEGIN
SELECT ESTADODEMANDA_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- DOWN
DROP SEQUENCE ESTADODEMANDA_SEQ;
DROP TABLE ESTADODEMANDA;
