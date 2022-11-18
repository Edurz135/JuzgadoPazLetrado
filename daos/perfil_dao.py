from configs.database import engine

def get_by_id(juez_id):
  conn = engine.connect()
  stmt = (f"""
  SELECT 
  
  JUEZ.ID AS JUEZ_ID,
  JUEZ.NOMBRES AS JUEZ_NOMBRES,
  JUEZ.APELLIDOS AS JUEZ_APELLIDOS,
  JUEZ.NRO_COLEGIATURA AS JUEZ_NRO_COLEGIATURA,
  JUEZ.DNI AS JUEZ_DNI,
  JUEZ.USUARIO AS JUEZ_USUARIO,
  JUEZ.CONTRASENA AS JUEZ_CONTRASENA,
  JUEZ.JUZGADO_ID AS JUZGADO_ID,
  JUZGADOPAZLETRADO.DIRECCION AS JUEZ_DIRECCION,
  JUEZ.SEXO_ID AS SEXO_ID,
  SEXO.NOMBRE AS JUEZ_SEXO
  
  FROM JUEZ
  INNER JOIN JUZGADOPAZLETRADO ON JUEZ.JUZGADO_ID = JUZGADOPAZLETRADO.ID
  INNER JOIN SEXO ON JUEZ.SEXO_ID = SEXO.ID
  WHERE JUEZ.ID = {juez_id}""")
  return [dict(r) for r in conn.execute(stmt)]

def get_all_sexo():
  conn = engine.connect()
  stmt = ("""
    SELECT ID, NOMBRE FROM SEXO
  """)
  
  return [dict(r) for r in conn.execute(stmt)]

def get_all_juzgadopazletrado():
  conn = engine.connect()
  stmt = ("""
    SELECT ID, DIRECCION FROM JUZGADOPAZLETRADO
  """)
  return [dict(r) for r in conn.execute(stmt)]