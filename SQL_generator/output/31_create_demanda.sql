-- UP
CREATE TABLE DEMANDA
(
  ID INT NOT NULL,
  DESCRIPCION VARCHAR(200) NOT NULL,
  NRO_SOLICITUD INT NOT NULL,
  FECHA_EMISION DATE NOT NULL,
  JUEZ_ID INT NOT NULL,
  DEMANDANTE_ID INT NOT NULL,
  DEMANDADO_ID INT NOT NULL,
  ABOGADO_ID INT NOT NULL,
  TIPODEMANDA_ID INT NOT NULL,
  ESTADODEMANDA_ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (JUEZ_ID) REFERENCES JUEZ(ID),
  FOREIGN KEY (DEMANDANTE_ID) REFERENCES DEMANDANTE(ID),
  FOREIGN KEY (DEMANDADO_ID) REFERENCES DEMANDADO(ID),
  FOREIGN KEY (ABOGADO_ID) REFERENCES ABOGADO(ID),
  FOREIGN KEY (TIPODEMANDA_ID) REFERENCES TIPODEMANDA(ID),
  FOREIGN KEY (ESTADODEMANDA_ID) REFERENCES ESTADODEMANDA(ID)
);
