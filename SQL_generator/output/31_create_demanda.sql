-- UP
CREATE TABLE DEMANDA
(
  ID NUMBER(10) NOT NULL,
  DESCRIPCION VARCHAR(200) NOT NULL,
  NRO_SOLICITUD INT NOT NULL,
  FECHA_EMISION DATE NOT NULL,
  JUEZ_ID NUMBER(10) NOT NULL,
  DEMANDANTE_ID NUMBER(10) NOT NULL,
  DEMANDADO_ID NUMBER(10) NOT NULL,
  ABOGADO_ID NUMBER(10) NOT NULL,
  TIPODEMANDA_ID NUMBER(10) NOT NULL,
  ESTADODEMANDA_ID NUMBER(10) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (JUEZ_ID) REFERENCES JUEZ(ID),
  FOREIGN KEY (DEMANDANTE_ID) REFERENCES DEMANDANTE(ID),
  FOREIGN KEY (DEMANDADO_ID) REFERENCES DEMANDADO(ID),
  FOREIGN KEY (ABOGADO_ID) REFERENCES ABOGADO(ID),
  FOREIGN KEY (TIPODEMANDA_ID) REFERENCES TIPODEMANDA(ID),
  FOREIGN KEY (ESTADODEMANDA_ID) REFERENCES ESTADODEMANDA(ID)
);

CREATE SEQUENCE DEMANDA_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER DEMANDA_PK 
BEFORE INSERT ON DEMANDA
FOR EACH ROW

BEGIN
SELECT DEMANDA_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- DOWN
DROP SEQUENCE DEMANDA_SEQ;
DROP TABLE DEMANDA;