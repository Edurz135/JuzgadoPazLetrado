from configs.database import engine

def get_juez(user, pswd):
  conn = engine.connect()
  stmt = f"""
  SELECT * FROM JUEZ WHERE USUARIO = '{user}' AND CONTRASENA = '{pswd}'
  """
  return [dict(r) for r in conn.execute(stmt)]

def get_password(user):
  conn = engine.connect()
  stmt = f"""
  SELECT JUEZ.CONTRASENA FROM JUEZ WHERE USUARIO = '{user}' 
  """
  return [dict(r) for r in conn.execute(stmt)]

