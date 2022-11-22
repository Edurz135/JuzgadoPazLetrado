from configs.database import engine

def get_juez(user, pswd):
  conn = engine.connect()
  stmt = f"""
  SELECT 
  J.ID AS JUEZ_ID, 
  J.USUARIO AS JUEZ_USUARIO, 
  J.CONTRASENA AS JUEZ_CONTRASENA 
  FROM JUEZ J
  WHERE J.USUARIO = '{user}' AND J.CONTRASENA = '{pswd}'
  """
  return [dict(r) for r in conn.execute(stmt)]

def get_password(user):
  conn = engine.connect()
  stmt = f"""
  SELECT
    GETPSWD('{user}')
  FROM
    dual
  """
  return [dict(r) for r in conn.execute(stmt)]

def get_user(password):
  conn = engine.connect()
  stmt = f"""
  SELECT JUEZ.USUARIO FROM JUEZ WHERE CONTRASENA = '{password}' 
  """
  return [dict(r) for r in conn.execute(stmt)]

