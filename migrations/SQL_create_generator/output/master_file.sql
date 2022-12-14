-- UP
CREATE TABLE SEXO
(
  ID NUMBER(10) NOT NULL,
  NOMBRE VARCHAR(10) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE SEQUENCE SEXO_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER SEXO_PK 
BEFORE INSERT ON SEXO 
FOR EACH ROW

BEGIN
SELECT SEXO_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE FORMSUNARP
(
  ID NUMBER(10) NOT NULL,
  NRO_PROPIEDADES NUMBER(10) NOT NULL,
  NRO_VEHICULOS NUMBER(10) NOT NULL,
  OBSERVACIONES VARCHAR(200) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE SEQUENCE FORMSUNARP_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER FORMSUNARP_PK 
BEFORE INSERT ON FORMSUNARP 
FOR EACH ROW

BEGIN
SELECT FORMSUNARP_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE FORMMINTRABAJO
(
  ID NUMBER(10) NOT NULL,
  NOMBRE_LUGAR_TRABAJO VARCHAR(30) NOT NULL,
  RUC_LUGAR_TRABAJO VARCHAR(11) NOT NULL,
  MONTO_INGRESO NUMBER(10) NOT NULL,
  OBSERVACIONES VARCHAR(200) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE SEQUENCE FORMMINTRABAJO_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER FORMMINTRABAJO_PK 
BEFORE INSERT ON FORMMINTRABAJO 
FOR EACH ROW

BEGIN
SELECT FORMMINTRABAJO_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

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

-- UP
CREATE TABLE JUZGADOPAZLETRADO
(
  ID NUMBER(10) NOT NULL,
  DIRECCION VARCHAR(100) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE SEQUENCE JUZGADOPAZLETRADO_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER JUZGADOPAZLETRADO_PK 
BEFORE INSERT ON JUZGADOPAZLETRADO 
FOR EACH ROW

BEGIN
SELECT JUZGADOPAZLETRADO_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE ESTADOCIVIL
(
  ID NUMBER(10) NOT NULL,
  NOMBRE VARCHAR(10) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE SEQUENCE ESTADOCIVIL_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER ESTADOCIVIL_PK 
BEFORE INSERT ON ESTADOCIVIL 
FOR EACH ROW

BEGIN
SELECT ESTADOCIVIL_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE GRADOINSTRUCCION
(
  ID NUMBER(10) NOT NULL,
  NOMBRE VARCHAR(30) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE SEQUENCE GRADOINSTRUCCION_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER GRADOINSTRUCCION_PK 
BEFORE INSERT ON GRADOINSTRUCCION 
FOR EACH ROW

BEGIN
SELECT GRADOINSTRUCCION_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE TIPODEMANDA
(
  ID NUMBER(10) NOT NULL,
  NOMBRE VARCHAR(60) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE SEQUENCE TIPODEMANDA_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER TIPODEMANDA_PK 
BEFORE INSERT ON TIPODEMANDA 
FOR EACH ROW

BEGIN
SELECT TIPODEMANDA_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE ESTADODEMANDA
(
  ID NUMBER(10) NOT NULL,
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

-- UP
CREATE TABLE ABOGADO
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

CREATE SEQUENCE ABOGADO_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER ABOGADO_PK 
BEFORE INSERT ON ABOGADO 
FOR EACH ROW

BEGIN
SELECT ABOGADO_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE JUEZ
(
  ID NUMBER(10) NOT NULL,
  DNI VARCHAR(8) NOT NULL,
  NOMBRES VARCHAR(45) NOT NULL,
  APELLIDOS VARCHAR(45) NOT NULL,
  NRO_COLEGIATURA NUMBER(10) NOT NULL,
  USUARIO VARCHAR(20) NOT NULL,
  CONTRASENA VARCHAR(20) NOT NULL,
  JUZGADO_ID NUMBER(10) NOT NULL,
  SEXO_ID NUMBER(10) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (JUZGADO_ID) REFERENCES JUZGADOPAZLETRADO(ID),
  FOREIGN KEY (SEXO_ID) REFERENCES SEXO(ID),
  UNIQUE (USUARIO)
);

CREATE SEQUENCE JUEZ_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER JUEZ_PK 
BEFORE INSERT ON JUEZ 
FOR EACH ROW

BEGIN
SELECT JUEZ_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE FORMRENIEC
(
  ID NUMBER(10) NOT NULL,
  DNI VARCHAR(8) NOT NULL,
  NOMBRES VARCHAR(45) NOT NULL,
  APELLIDOS VARCHAR(45) NOT NULL,
  DIRECCION VARCHAR(100) NOT NULL,
  ESTADOCIVIL_ID NUMBER(10) NOT NULL,
  GRADOINSTRUCCION_ID NUMBER(10) NOT NULL,
  SEXO_ID NUMBER(10) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ESTADOCIVIL_ID) REFERENCES ESTADOCIVIL(ID),
  FOREIGN KEY (GRADOINSTRUCCION_ID) REFERENCES GRADOINSTRUCCION(ID),
  FOREIGN KEY (SEXO_ID) REFERENCES SEXO(ID)
);

CREATE SEQUENCE FORMRENIEC_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER FORMRENIEC_PK 
BEFORE INSERT ON FORMRENIEC 
FOR EACH ROW

BEGIN
SELECT FORMRENIEC_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE EXPEDIENTE
(
  ID NUMBER(10) NOT NULL,
  NRO_EXPEDIENTE VARCHAR(30) NOT NULL,
  OBSERVACIONES VARCHAR(200) NOT NULL,
  FORMRENIEC_ID NUMBER(10) NOT NULL,
  FORMSUNARP_ID NUMBER(10) NOT NULL,
  FORMMINTRABAJO_ID NUMBER(10) NOT NULL,
  SECRETARIOJUDICIAL_ID NUMBER(10) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (FORMRENIEC_ID) REFERENCES FORMRENIEC(ID),
  FOREIGN KEY (FORMSUNARP_ID) REFERENCES FORMSUNARP(ID),
  FOREIGN KEY (FORMMINTRABAJO_ID) REFERENCES FORMMINTRABAJO(ID),
  FOREIGN KEY (SECRETARIOJUDICIAL_ID) REFERENCES SECRETARIOJUDICIAL(ID)
);

CREATE SEQUENCE EXPEDIENTE_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER EXPEDIENTE_PK 
BEFORE INSERT ON EXPEDIENTE 
FOR EACH ROW

BEGIN
SELECT EXPEDIENTE_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

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

-- UP
CREATE TABLE DEMANDANTE
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

CREATE SEQUENCE DEMANDANTE_SEQ START WITH 1;

CREATE OR REPLACE TRIGGER DEMANDANTE_PK 
BEFORE INSERT ON DEMANDANTE 
FOR EACH ROW

BEGIN
SELECT DEMANDANTE_SEQ.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/

-- UP
CREATE TABLE DEMANDA
(
  ID NUMBER(10) NOT NULL,
  DESCRIPCION VARCHAR(200) NOT NULL,
  NRO_SOLICITUD NUMBER(10) NOT NULL,
  FECHA_EMISION DATE NOT NULL,
  JUEZ_ID NUMBER(10) NOT NULL,
  DEMANDANTE_ID NUMBER(10) NOT NULL,
  DEMANDADO_ID NUMBER(10) NOT NULL,
  DEMANDANTE_ABOGADO_ID NUMBER(10) NOT NULL,
  DEMANDADO_ABOGADO_ID NUMBER(10) NOT NULL,
  TIPODEMANDA_ID NUMBER(10) NOT NULL,
  ESTADODEMANDA_ID NUMBER(10) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (JUEZ_ID) REFERENCES JUEZ(ID),
  FOREIGN KEY (DEMANDANTE_ID) REFERENCES DEMANDANTE(ID),
  FOREIGN KEY (DEMANDADO_ID) REFERENCES DEMANDADO(ID),
  FOREIGN KEY (DEMANDANTE_ABOGADO_ID) REFERENCES ABOGADO(ID),
  FOREIGN KEY (DEMANDADO_ABOGADO_ID) REFERENCES ABOGADO(ID),
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

